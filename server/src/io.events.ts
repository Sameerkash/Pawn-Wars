import { Server, Socket } from "socket.io";
import { SockeType } from "./constants";
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
      console.log(room);
      this.gameState.createRoom(room.id);
    });

    this.socket.on(SockeType.JOINROOM, (room, player) => {
      console.log(room, player);
      let code = room.id;

      let p = new Player(
        player.id,
        player.nickName,
        player.publicKey,
        player.avatar
      );

      this.gameState.joinRoom(room.id, p);
      this.gameState.updateStake(room.id, room.totalStake);

      let players = this.gameState.getPlayers(code);
      this.io.to(code).emit(SockeType.JOINROOM, players);
    });

    this.socket.on(SockeType.READY, (socket: Socket) => {
      console.log(socket);
    });

    this.socket.on(SockeType.GAMEINITIALISED, (socket: Socket) => {
      console.log(socket);
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
