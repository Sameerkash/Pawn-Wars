// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Room _$$_RoomFromJson(Map<String, dynamic> json) => _$_Room(
      id: json['id'] as String,
      player: (json['player'] as List<dynamic>?)
              ?.map((e) => Player.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isStarted: json['isStarted'] as bool? ?? false,
      winnerPublicKey: json['winnerPublicKey'] as String?,
    );

Map<String, dynamic> _$$_RoomToJson(_$_Room instance) => <String, dynamic>{
      'id': instance.id,
      'player': instance.player,
      'isStarted': instance.isStarted,
      'winnerPublicKey': instance.winnerPublicKey,
    };
