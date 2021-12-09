// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as String,
      players: (json['players'] as List<dynamic>?)
              ?.map((e) => Player.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isStarted: json['isStarted'] as bool? ?? false,
      winnerPublicKey: json['winnerPublicKey'] as String?,
      totalStake: json['totalStake'] as int?,
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'players': instance.players,
      'isStarted': instance.isStarted,
      'winnerPublicKey': instance.winnerPublicKey,
      'totalStake': instance.totalStake,
    };
