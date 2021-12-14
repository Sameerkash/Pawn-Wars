import express from "express";
import { Server, Socket } from "socket.io";
import http from "http";
import { SockeType } from "./constants";
import { IoEvents } from "./io.events";
import cors from "cors";

const app = express();

const httpServer = http.createServer(app);

const io = new Server(httpServer);
io.setMaxListeners(200);

// add cors support
app.use(cors());

io.on(SockeType.CONNECTION, (socket: Socket) => {
  new IoEvents(io, socket);

  console.log(socket.id);
});

const PORT = process.env.PORT || 3000;
httpServer.listen(PORT, () => console.log(`Server listening on ${PORT}`));
