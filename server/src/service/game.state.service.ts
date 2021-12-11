import { PlayerPawn } from "src/constants";
import { GameRoom } from "../models/game.room";
import { Player } from "../models/player";

export class GameState {
  private rooms: Map<string, GameRoom>;

  private static _instance: GameState;

  constructor() {
    this.rooms = new Map();
  }

  public static get Instance() {
    return this._instance || (this._instance = new this());
  }

  public getRoom(code: string): GameRoom | undefined {
    return this.rooms.get(code);
  }

  public createRoom(code: string, pawn: PlayerPawn): void {
    this.rooms.set(code, new GameRoom(code, [], 0, pawn));
    console.log(this.rooms);
  }

  public joinRoom(code: string, player: Player): void {
    let room = this.getRoom(code);
    if (room) {
      room.players.push(player);
    }
  }

  public updateStake(stake: number, code: string): number {
    let totalStake = 0;
    let room = this.getRoom(code);
    if (room) {
      totalStake = room.stake;
      totalStake += stake;
      room.stake = totalStake;
      this.rooms.set(code, room);
    }
    console.log(totalStake, code, this.rooms);
    return totalStake;
  }

  public leaveRoom(code: string, player: Player): void {
    let room = this.getRoom(code);
    if (room) {
      room.players = room?.players.filter(
        (p) => p.publicKey !== player.publicKey
      );
    }
  }

  public getPlayers(code: string): Player[] | undefined {
    const room = this.getRoom(code);
    if (room) {
      return room!.players;
    }
  }

  public isValidJoin(code: string): boolean {
    const room = this.getRoom(code);
    if (room) {
      return room.players.length < 3;
    }
    return false;
  }
}
