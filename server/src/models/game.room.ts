import { PlayerPawn } from "src/constants";
import { Player } from "./player";

export class GameRoom {
  players: Player[];
  code: string;
  stake: number;
  winner?: string;
  pawnClaimed?: PlayerPawn;

  //
  constructor(
    code: string,
    players?: Player[],
    stake?: number,
    pawnClaimed?: PlayerPawn,
    winner?: string,
  ) {
    this.players = players ?? [];
    this.code = code;
    this.stake = stake ?? 0;
    this.winner = winner;
    this.pawnClaimed = pawnClaimed;
  }
}
