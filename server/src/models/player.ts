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

  constructor(
    gameId: string,
    nickName: string,
    publicKey: string,
    avatar?: string
  ) {
    this.gameId = gameId;
    this.nickName = nickName;
    this.publicKey = publicKey;
    this.avatar = avatar;
  }
}
