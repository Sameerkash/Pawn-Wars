import { Server, Socket } from "socket.io";
import { PlayerPawn, SockeType } from "./constants";
import { Player } from "./models/player";
import { GameState } from "./service/game.state.service";
export class IoEvents {
  private io: Server;
  /**
      The current socket being acccessed
    */
  private socket: Socket;

  private gameState: GameState;

  constructor(io: Server, socket: Socket) {
    this.io = io;
    this.socket = socket;

    this.gameState = GameState.Instance;

    this.socket.on(SockeType.CREATEROOM, (room) => {
      this.gameState.createRoom(room.code, room.pawnClaimed);
    });

    this.socket.on(SockeType.JOINROOM, (roomCode, player) => {
      console.log(roomCode);
      var p;

      if (player.pawn === null || player.pawn === undefined) {
        let gameRoom = this.gameState.getRoom(roomCode);
        let newPawn =
          gameRoom?.pawnClaimed == PlayerPawn.WHITE
            ? PlayerPawn.BLACK
            : PlayerPawn.WHITE;

        p = new Player(
          player.id,
          player.nickName,
          player.publicKey,
          newPawn,
          player.avatar
        );
      } else {
        p = new Player(
          player.id,
          player.nickName,
          player.publicKey,
          player.avatar
        );
      }

      this.gameState.joinRoom(roomCode, p);
      this.gameState.updateStake(roomCode, player.stake);
      let gameRoom = this.gameState.getRoom(roomCode);

      socket.join(roomCode);
      this.io.to(roomCode).emit(SockeType.JOINROOM, gameRoom);
    });

    this.socket.on(SockeType.READY, (socket: Socket) => {
      console.log(socket);
    });

    this.socket.on(SockeType.GAMEINITIALISED, (roomCode, isInitalized) => {
      this.io.to(roomCode).emit(SockeType.GAMEINITIALISED, isInitalized);
    });

    this.socket.on(SockeType.NOTIFICATION, (socket: Socket) => {
      console.log(socket);
    });

    this.socket.on(SockeType.GAMEMOVES, (socket: Socket) => {
      console.log(socket);
      this.io.emit(SockeType.GAMEMOVES, socket);
    });

    this.socket.on(SockeType.LEAVING, (socket: Socket) => {
      console.log(socket);
    });
  }
}
