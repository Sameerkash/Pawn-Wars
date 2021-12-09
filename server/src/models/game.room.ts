import { Player } from "./player";

export class GameRoom {
  players: Player[];
  code: string;
  stake: number;
  winner?: string;

  //
  constructor(
    code: string,
    players?: Player[],
    stake?: number,
    winner?: string
  ) {
    this.players = players ?? [];
    this.code = code;
    this.stake = stake ?? 0;
    this.winner;
  }
}
