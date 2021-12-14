// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      code: json['code'] as String,
      players: (json['players'] as List<dynamic>?)
              ?.map((e) => Player.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isStarted: json['isStarted'] as bool? ?? false,
      winnerPublicKey: json['winnerPublicKey'] as String?,
      totalStake: (json['totalStake'] as num?)?.toDouble(),
      pawnClaimed:
          $enumDecodeNullable(_$PlayerPawnEnumMap, json['pawnClaimed']),
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'code': instance.code,
      'players': instance.players.map((e) => e.toJson()).toList(),
      'isStarted': instance.isStarted,
      'winnerPublicKey': instance.winnerPublicKey,
      'totalStake': instance.totalStake,
      'pawnClaimed': _$PlayerPawnEnumMap[instance.pawnClaimed],
    };

const _$PlayerPawnEnumMap = {
  PlayerPawn.white: 'WHITE',
  PlayerPawn.black: 'BLACK',
};
