import { Server, Socket } from "socket.io";
export class IoEvents {
  private io: Server;
  /**
      The current socket being acccessed
    */
  private socket: Socket;
  constructor(io: Server, socket: Socket) {
    this.io = io;
    this.socket = socket;
  }
}
