// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Player _$$_PlayerFromJson(Map<String, dynamic> json) => _$_Player(
      publicKey: json['publicKey'] as String,
      nickName: json['nickName'] as String?,
      avatar: json['avatar'] as String?,
      pawn: $enumDecodeNullable(_$PlayerPawnEnumMap, json['pawn']),
      stake: json['stake'] as int? ?? 0,
    );

Map<String, dynamic> _$$_PlayerToJson(_$_Player instance) => <String, dynamic>{
      'publicKey': instance.publicKey,
      'nickName': instance.nickName,
      'avatar': instance.avatar,
      'pawn': _$PlayerPawnEnumMap[instance.pawn],
      'stake': instance.stake,
    };

const _$PlayerPawnEnumMap = {
  PlayerPawn.white: 'WHITE',
  PlayerPawn.black: 'BLACK',
};
