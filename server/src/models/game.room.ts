import { Player } from "./player";

export class GameRoom {
  id: string;
  players: Player[];
  code?: string;
  stake: number;

  //
  constructor(id: string, players: Player[], code?: string, stake?: number) {
    this.players = players ?? [];
    this.id = id;
    this.code = code;
    this.stake = stake ?? 0;
  }
}
