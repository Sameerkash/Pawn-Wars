import { PlayerPawn } from "src/constants";

export class Player {
  /**
      The ready state of the player
    */
  ready: boolean = false;

  /**
      The current room the player is in
    */
  gameId: string;

  /**
      The display Name of the player
    */
  nickName: string;

  /**
      The socketId of the player
    */
  publicKey: string;

  /**
      The Avatar of the player
    */
  avatar?: string;

  stake: number;

  pawn: PlayerPawn;

  constructor(
    gameId: string,
    nickName: string,
    publicKey: string,
    pawn: PlayerPawn,
    avatar?: string,
    stake?: number
  ) {
    this.gameId = gameId;
    this.nickName = nickName;
    this.publicKey = publicKey;
    this.avatar = avatar;
    this.stake = stake ?? 0;
    this.pawn = pawn;
  }
}
