import 'package:json_annotation/json_annotation.dart';

enum PlayerPawn {
  @JsonValue('WHITE')
  white,
  @JsonValue('BLACK')
  black,
}

enum NftSkin {
  @JsonValue('BLUE')
  blue,
  @JsonValue('PINK')
  pink,
}

enum NftTypeEnum { skin, background, art }
