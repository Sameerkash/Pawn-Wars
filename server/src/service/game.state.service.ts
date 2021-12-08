import { GameRoom } from "../models/game.room";
import { Player } from "../models/player";

export class GameState {
  private rooms: GameRoom[];

  private static _instance: GameState;

  constructor() {
    this.rooms = [];
  }

  public static get Instance() {
    return this._instance || (this._instance = new this());
  }

  public getRoom(code: string): GameRoom[] {
    return this.rooms.filter((room) => room.code === code);
  }

  public createRoom(code: string, id: string): void {
    this.rooms.push(new GameRoom(id, [], code));
  }

  public joinRoom(code: string, player: Player): void {
    this.rooms.forEach((room) => {
      if (room.code === code) {
        room.players.push(player);
      }
    });
  }

  public updateStake(stake: number, code: string): number {
    let room = this.getRoom(code);
    room[0].stake! += stake;
    return room[0].stake;
  }

  public leaveRoom(code: string, player: Player): void {
    this.rooms.forEach((room) => {
      if (room.code === code) {
        room.players = room.players.filter(
          (p) => p.publicKey !== player.publicKey
        );
      }
    });
  }

  public getPlayers(code: string): Player[] {
    const room = this.getRoom(code);
    return room[0].players;
  }

  public isValidJoin(code: string): boolean {
    const room = this.getRoom(code);
    if (room[0].players.length < 2) {
      return true;
    }
    return false;
  }
}
