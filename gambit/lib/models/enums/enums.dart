import 'package:json_annotation/json_annotation.dart';

enum PlayerPawn {
  @JsonValue('WHITE')
  white,
  @JsonValue('BLACK')
  black,
}
