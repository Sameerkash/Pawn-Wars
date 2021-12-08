import 'package:bishop/bishop.dart' as bishop;
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:squares/squares.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:socket_io_client/socket_io_client.dart';
part 'game.vm.freezed.dart';

IO.Socket socket = IO.io(
  'http://192.168.29.223:8000',
  OptionBuilder()
      .setTransports(['websocket'])
      .disableAutoConnect() // for Flutter or Dart VM
      .build(),
);

class GameState extends Equatable {
  final PlayState state;
  final BoardSize size;
  final BoardState board;
  final List<Move> moves;
  final List<List<String>> hands;
  final bool thinking;

  bool get canMove => state == PlayState.ourTurn;

  const GameState({
    required this.state,
    required this.size,
    required this.board,
    required this.moves,
    this.hands = const [[], []],
    this.thinking = false,
  });

  factory GameState.initial({required List<String> gameSymbols}) => GameState(
        state: PlayState.idle,
        size: BoardSize.standard(),
        board: BoardState(board: gameSymbols),
        moves: const [],
      );

  GameState copyWith({
    PlayState? state,
    BoardSize? size,
    BoardState? board,
    List<Move>? moves,
    List<List<String>>? hands,
    bool? thinking,
  }) {
    return GameState(
      state: state ?? this.state,
      size: size ?? this.size,
      board: board ?? this.board,
      moves: moves ?? this.moves,
      hands: hands ?? this.hands,
      thinking: thinking ?? this.thinking,
    );
  }

  @override
  List<Object> get props => [state, size, board, moves, hands, thinking];
  @override
  bool get stringify => true;
}

enum PlayState {
  idle,
  ourTurn,
  theirTurn,
  finished,
}

@freezed
class GamePlayState with _$GamePlayState {
  const factory GamePlayState.loading() = _Loading;
  const factory GamePlayState.initial({
    GameState? gameState,
    bishop.Game? game,
    bishop.Engine? engine,
  }) = _Initial;
  const factory GamePlayState.play({
    GameState? gameState,
    bishop.Game? game,
    bishop.Engine? engine,
  }) = _Play;
  const factory GamePlayState.finished(
    GameState? gameState,
  ) = _Finished;
}

class GameVM extends StateNotifier<GamePlayState> {
  GameVM() : super(const GamePlayState.loading()) {
    init();

    // socket.connect();
    
    // socket.onConnect((_) {
    //   print('connect');
    //   socket.emit('msg', 'test');
    // });
  }

  Future<void> init() async {
    final game = bishop.Game(variant: bishop.Variant.standard());
    final engine = bishop.Engine(game: game);
    state = GamePlayState.initial(
      gameState: GameState.initial(gameSymbols: game.boardSymbols()),
      game: game,
      engine: engine,
    );
  }

  void play() {
    final currentState = state;
    if (currentState is _Initial) {
      final game = currentState.game;
      final boardSize = BoardSize(game!.size.h, game.size.v);
      final gameState = currentState.gameState;

      List<bishop.Move> _moves = game.generateLegalMoves();
      List<Move> moves = [];
      for (bishop.Move move in _moves) {
        String algebraic = game.toAlgebraic(move);
        Move _move = moveFromAlgebraic(algebraic, boardSize);
        moves.add(_move);
      }

      state = GamePlayState.play(
        gameState: GameState(
          state: PlayState.ourTurn,
          size: boardSize,
          board: gameState!.board,
          moves: moves,
        ),
        game: currentState.game,
        engine: currentState.engine,
      );
    }
  }

  void makeMove(Move move) {
    final currentState = state;


    if (currentState is _Play) {
      final game = currentState.game;
      final gamePlay = currentState.gameState;
      String alg = moveToAlgebraic(move, gamePlay!.size);
      bishop.Move? m = game!.getMove(alg);
      if (m == null) {
        debugPrint('move $alg not found');
      } else {
        game.makeMove(m);
        socket.emit('joinroom', alg);
        emitState();

      }
    }

    // if (m == null)
    //   print('move $alg not found');
    // else {
    //   game!.makeMove(m);
    //   emitState();
    //   //Future.delayed(Duration(milliseconds: 200)).then((_) => engineMove());
    //   engineMove();
    // }
  }

  void emitState([bool thinking = false]) {
    // if (game == null) emit(GameState.initial());
    final currentState = state;

    if (currentState is _Play) {
      final game = currentState.game;

      BoardSize size = BoardSize(game!.size.h, game.size.v);
      bool canMove = true;
      // game.turn == WHITE;

      List<bishop.Move> _moves = game.generateLegalMoves();
      // : game.generatePremoves();

      List<Move> moves = [];
      for (bishop.Move move in _moves) {
        String algebraic = game.toAlgebraic(move);
        Move _move = moveFromAlgebraic(algebraic, size);
        moves.add(_move);
      }

      bishop.GameInfo gameInfo = game.info;
      BoardState board = BoardState(
        board: game.boardSymbols(),
        lastFrom: gameInfo.lastFrom != null
            ? size.squareNumber(gameInfo.lastFrom!)
            : null,
        lastTo: gameInfo.lastTo != null
            ? size.squareNumber(gameInfo.lastTo!)
            : null,
        checkSquare: gameInfo.checkSq != null
            ? size.squareNumber(gameInfo.checkSq!)
            : null,
      );

      PlayState playState = game.gameOver
          ? PlayState.finished
          : (canMove ? PlayState.ourTurn : PlayState.theirTurn);

      final gameState = GameState(
        state: playState,
        thinking: thinking,
        size: size,
        board: board,
        moves: moves,
        hands: game.handSymbols(),
      );

      state = GamePlayState.play(
        gameState: gameState,
        game: game,
        engine: currentState.engine,
      );
    }

    print('emitState:  $currentState');
  }
}

final gamePlayProvider =
    StateNotifierProvider<GameVM, GamePlayState>((ref) => GameVM());

Move moveFromAlgebraic(String alg, BoardSize size) {
  if (alg[1] == '@') {
    // it's a drop
    int from = HAND;
    int to = size.squareNumber(alg.substring(2, 4));
    return Move(from: from, to: to, piece: alg[0].toUpperCase());
  }
  int from = size.squareNumber(alg.substring(0, 2));
  int to = size.squareNumber(alg.substring(2, 4));
  String? promo = (alg.length > 4) ? alg[4] : null;
  return Move(from: from, to: to, promo: promo);
}

String moveToAlgebraic(Move move, BoardSize size) {
  if (move.drop) {
    return '${move.piece!.toLowerCase()}@${size.squareName(move.to)}';
  } else {
    String from = size.squareName(move.from);
    String to = size.squareName(move.to);
    String alg = '$from$to';
    if (move.promotion) alg = '$alg${move.promo}';
    return alg;
  }
}