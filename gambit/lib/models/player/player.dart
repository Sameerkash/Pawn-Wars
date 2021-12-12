import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:web3dart/web3dart.dart';
part 'player.freezed.dart';
part 'player.g.dart';

@freezed
class Player with _$Player {
  const factory Player({
    required final String publicKey,
    final String? nickName,
    final String? avatar,
    final PlayerPawn? pawn,
    @Default(0) final double stake,
    @JsonKey(ignore: true) EtherAmount? balance,
  }) = _Player;

  factory Player.fromJson(Map<String, dynamic> json) => _$PlayerFromJson(json);
}

@freezed
class PlayerCredentials with _$PlayerCredentials {
  const factory PlayerCredentials({
    required final String publicKey,
    required final String privateKey,
  }) = _PlayerCredentials;

  factory PlayerCredentials.fromJson(Map<String, dynamic> json) =>
      _$PlayerCredentialsFromJson(json);
}
