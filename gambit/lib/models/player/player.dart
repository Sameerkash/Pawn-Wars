import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/enums/enums.dart';
part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required final String publicKey,
    final String? nickName,
    final String? avatar,
    final PlayerPawn? pawn,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}
