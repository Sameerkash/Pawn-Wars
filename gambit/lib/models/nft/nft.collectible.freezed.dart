// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'nft.collectible.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NftCollectible _$NftCollectibleFromJson(Map<String, dynamic> json) {
  return _NftCollectible.fromJson(json);
}

/// @nodoc
class _$NftCollectibleTearOff {
  const _$NftCollectibleTearOff();

  _NftCollectible call(
      {required String title,
      required String description,
      required String imageUrl,
      required NftType nftType}) {
    return _NftCollectible(
      title: title,
      description: description,
      imageUrl: imageUrl,
      nftType: nftType,
    );
  }

  NftCollectible fromJson(Map<String, Object?> json) {
    return NftCollectible.fromJson(json);
  }
}

/// @nodoc
const $NftCollectible = _$NftCollectibleTearOff();

/// @nodoc
mixin _$NftCollectible {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  NftType get nftType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NftCollectibleCopyWith<NftCollectible> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftCollectibleCopyWith<$Res> {
  factory $NftCollectibleCopyWith(
          NftCollectible value, $Res Function(NftCollectible) then) =
      _$NftCollectibleCopyWithImpl<$Res>;
  $Res call(
      {String title, String description, String imageUrl, NftType nftType});

  $NftTypeCopyWith<$Res> get nftType;
}

/// @nodoc
class _$NftCollectibleCopyWithImpl<$Res>
    implements $NftCollectibleCopyWith<$Res> {
  _$NftCollectibleCopyWithImpl(this._value, this._then);

  final NftCollectible _value;
  // ignore: unused_field
  final $Res Function(NftCollectible) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? nftType = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nftType: nftType == freezed
          ? _value.nftType
          : nftType // ignore: cast_nullable_to_non_nullable
              as NftType,
    ));
  }

  @override
  $NftTypeCopyWith<$Res> get nftType {
    return $NftTypeCopyWith<$Res>(_value.nftType, (value) {
      return _then(_value.copyWith(nftType: value));
    });
  }
}

/// @nodoc
abstract class _$NftCollectibleCopyWith<$Res>
    implements $NftCollectibleCopyWith<$Res> {
  factory _$NftCollectibleCopyWith(
          _NftCollectible value, $Res Function(_NftCollectible) then) =
      __$NftCollectibleCopyWithImpl<$Res>;
  @override
  $Res call(
      {String title, String description, String imageUrl, NftType nftType});

  @override
  $NftTypeCopyWith<$Res> get nftType;
}

/// @nodoc
class __$NftCollectibleCopyWithImpl<$Res>
    extends _$NftCollectibleCopyWithImpl<$Res>
    implements _$NftCollectibleCopyWith<$Res> {
  __$NftCollectibleCopyWithImpl(
      _NftCollectible _value, $Res Function(_NftCollectible) _then)
      : super(_value, (v) => _then(v as _NftCollectible));

  @override
  _NftCollectible get _value => super._value as _NftCollectible;

  @override
  $Res call({
    Object? title = freezed,
    Object? description = freezed,
    Object? imageUrl = freezed,
    Object? nftType = freezed,
  }) {
    return _then(_NftCollectible(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      nftType: nftType == freezed
          ? _value.nftType
          : nftType // ignore: cast_nullable_to_non_nullable
              as NftType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NftCollectible implements _NftCollectible {
  const _$_NftCollectible(
      {required this.title,
      required this.description,
      required this.imageUrl,
      required this.nftType});

  factory _$_NftCollectible.fromJson(Map<String, dynamic> json) =>
      _$$_NftCollectibleFromJson(json);

  @override
  final String title;
  @override
  final String description;
  @override
  final String imageUrl;
  @override
  final NftType nftType;

  @override
  String toString() {
    return 'NftCollectible(title: $title, description: $description, imageUrl: $imageUrl, nftType: $nftType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NftCollectible &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.nftType, nftType) || other.nftType == nftType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, title, description, imageUrl, nftType);

  @JsonKey(ignore: true)
  @override
  _$NftCollectibleCopyWith<_NftCollectible> get copyWith =>
      __$NftCollectibleCopyWithImpl<_NftCollectible>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NftCollectibleToJson(this);
  }
}

abstract class _NftCollectible implements NftCollectible {
  const factory _NftCollectible(
      {required String title,
      required String description,
      required String imageUrl,
      required NftType nftType}) = _$_NftCollectible;

  factory _NftCollectible.fromJson(Map<String, dynamic> json) =
      _$_NftCollectible.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  String get imageUrl;
  @override
  NftType get nftType;
  @override
  @JsonKey(ignore: true)
  _$NftCollectibleCopyWith<_NftCollectible> get copyWith =>
      throw _privateConstructorUsedError;
}

NftType _$NftTypeFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'skin':
      return Skin.fromJson(json);
    case 'background':
      return Backgorund.fromJson(json);
    case 'art':
      return Art.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'NftType', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$NftTypeTearOff {
  const _$NftTypeTearOff();

  Skin skin({required NftSkin skinColor}) {
    return Skin(
      skinColor: skinColor,
    );
  }

  Backgorund background({String? colorHex, String? backgroundImage}) {
    return Backgorund(
      colorHex: colorHex,
      backgroundImage: backgroundImage,
    );
  }

  Art art({String? image}) {
    return Art(
      image: image,
    );
  }

  NftType fromJson(Map<String, Object?> json) {
    return NftType.fromJson(json);
  }
}

/// @nodoc
const $NftType = _$NftTypeTearOff();

/// @nodoc
mixin _$NftType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NftSkin skinColor) skin,
    required TResult Function(String? colorHex, String? backgroundImage)
        background,
    required TResult Function(String? image) art,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NftSkin skinColor)? skin,
    TResult Function(String? colorHex, String? backgroundImage)? background,
    TResult Function(String? image)? art,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NftSkin skinColor)? skin,
    TResult Function(String? colorHex, String? backgroundImage)? background,
    TResult Function(String? image)? art,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Skin value) skin,
    required TResult Function(Backgorund value) background,
    required TResult Function(Art value) art,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Skin value)? skin,
    TResult Function(Backgorund value)? background,
    TResult Function(Art value)? art,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Skin value)? skin,
    TResult Function(Backgorund value)? background,
    TResult Function(Art value)? art,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NftTypeCopyWith<$Res> {
  factory $NftTypeCopyWith(NftType value, $Res Function(NftType) then) =
      _$NftTypeCopyWithImpl<$Res>;
}

/// @nodoc
class _$NftTypeCopyWithImpl<$Res> implements $NftTypeCopyWith<$Res> {
  _$NftTypeCopyWithImpl(this._value, this._then);

  final NftType _value;
  // ignore: unused_field
  final $Res Function(NftType) _then;
}

/// @nodoc
abstract class $SkinCopyWith<$Res> {
  factory $SkinCopyWith(Skin value, $Res Function(Skin) then) =
      _$SkinCopyWithImpl<$Res>;
  $Res call({NftSkin skinColor});
}

/// @nodoc
class _$SkinCopyWithImpl<$Res> extends _$NftTypeCopyWithImpl<$Res>
    implements $SkinCopyWith<$Res> {
  _$SkinCopyWithImpl(Skin _value, $Res Function(Skin) _then)
      : super(_value, (v) => _then(v as Skin));

  @override
  Skin get _value => super._value as Skin;

  @override
  $Res call({
    Object? skinColor = freezed,
  }) {
    return _then(Skin(
      skinColor: skinColor == freezed
          ? _value.skinColor
          : skinColor // ignore: cast_nullable_to_non_nullable
              as NftSkin,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Skin implements Skin {
  const _$Skin({required this.skinColor, String? $type})
      : $type = $type ?? 'skin';

  factory _$Skin.fromJson(Map<String, dynamic> json) => _$$SkinFromJson(json);

  @override
  final NftSkin skinColor;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NftType.skin(skinColor: $skinColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Skin &&
            (identical(other.skinColor, skinColor) ||
                other.skinColor == skinColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, skinColor);

  @JsonKey(ignore: true)
  @override
  $SkinCopyWith<Skin> get copyWith =>
      _$SkinCopyWithImpl<Skin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NftSkin skinColor) skin,
    required TResult Function(String? colorHex, String? backgroundImage)
        background,
    required TResult Function(String? image) art,
  }) {
    return skin(skinColor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NftSkin skinColor)? skin,
    TResult Function(String? colorHex, String? backgroundImage)? background,
    TResult Function(String? image)? art,
  }) {
    return skin?.call(skinColor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NftSkin skinColor)? skin,
    TResult Function(String? colorHex, String? backgroundImage)? background,
    TResult Function(String? image)? art,
    required TResult orElse(),
  }) {
    if (skin != null) {
      return skin(skinColor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Skin value) skin,
    required TResult Function(Backgorund value) background,
    required TResult Function(Art value) art,
  }) {
    return skin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Skin value)? skin,
    TResult Function(Backgorund value)? background,
    TResult Function(Art value)? art,
  }) {
    return skin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Skin value)? skin,
    TResult Function(Backgorund value)? background,
    TResult Function(Art value)? art,
    required TResult orElse(),
  }) {
    if (skin != null) {
      return skin(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SkinToJson(this);
  }
}

abstract class Skin implements NftType {
  const factory Skin({required NftSkin skinColor}) = _$Skin;

  factory Skin.fromJson(Map<String, dynamic> json) = _$Skin.fromJson;

  NftSkin get skinColor;
  @JsonKey(ignore: true)
  $SkinCopyWith<Skin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BackgorundCopyWith<$Res> {
  factory $BackgorundCopyWith(
          Backgorund value, $Res Function(Backgorund) then) =
      _$BackgorundCopyWithImpl<$Res>;
  $Res call({String? colorHex, String? backgroundImage});
}

/// @nodoc
class _$BackgorundCopyWithImpl<$Res> extends _$NftTypeCopyWithImpl<$Res>
    implements $BackgorundCopyWith<$Res> {
  _$BackgorundCopyWithImpl(Backgorund _value, $Res Function(Backgorund) _then)
      : super(_value, (v) => _then(v as Backgorund));

  @override
  Backgorund get _value => super._value as Backgorund;

  @override
  $Res call({
    Object? colorHex = freezed,
    Object? backgroundImage = freezed,
  }) {
    return _then(Backgorund(
      colorHex: colorHex == freezed
          ? _value.colorHex
          : colorHex // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundImage: backgroundImage == freezed
          ? _value.backgroundImage
          : backgroundImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Backgorund implements Backgorund {
  const _$Backgorund({this.colorHex, this.backgroundImage, String? $type})
      : $type = $type ?? 'background';

  factory _$Backgorund.fromJson(Map<String, dynamic> json) =>
      _$$BackgorundFromJson(json);

  @override
  final String? colorHex;
  @override
  final String? backgroundImage;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NftType.background(colorHex: $colorHex, backgroundImage: $backgroundImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Backgorund &&
            (identical(other.colorHex, colorHex) ||
                other.colorHex == colorHex) &&
            (identical(other.backgroundImage, backgroundImage) ||
                other.backgroundImage == backgroundImage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, colorHex, backgroundImage);

  @JsonKey(ignore: true)
  @override
  $BackgorundCopyWith<Backgorund> get copyWith =>
      _$BackgorundCopyWithImpl<Backgorund>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NftSkin skinColor) skin,
    required TResult Function(String? colorHex, String? backgroundImage)
        background,
    required TResult Function(String? image) art,
  }) {
    return background(colorHex, backgroundImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NftSkin skinColor)? skin,
    TResult Function(String? colorHex, String? backgroundImage)? background,
    TResult Function(String? image)? art,
  }) {
    return background?.call(colorHex, backgroundImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NftSkin skinColor)? skin,
    TResult Function(String? colorHex, String? backgroundImage)? background,
    TResult Function(String? image)? art,
    required TResult orElse(),
  }) {
    if (background != null) {
      return background(colorHex, backgroundImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Skin value) skin,
    required TResult Function(Backgorund value) background,
    required TResult Function(Art value) art,
  }) {
    return background(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Skin value)? skin,
    TResult Function(Backgorund value)? background,
    TResult Function(Art value)? art,
  }) {
    return background?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Skin value)? skin,
    TResult Function(Backgorund value)? background,
    TResult Function(Art value)? art,
    required TResult orElse(),
  }) {
    if (background != null) {
      return background(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BackgorundToJson(this);
  }
}

abstract class Backgorund implements NftType {
  const factory Backgorund({String? colorHex, String? backgroundImage}) =
      _$Backgorund;

  factory Backgorund.fromJson(Map<String, dynamic> json) =
      _$Backgorund.fromJson;

  String? get colorHex;
  String? get backgroundImage;
  @JsonKey(ignore: true)
  $BackgorundCopyWith<Backgorund> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtCopyWith<$Res> {
  factory $ArtCopyWith(Art value, $Res Function(Art) then) =
      _$ArtCopyWithImpl<$Res>;
  $Res call({String? image});
}

/// @nodoc
class _$ArtCopyWithImpl<$Res> extends _$NftTypeCopyWithImpl<$Res>
    implements $ArtCopyWith<$Res> {
  _$ArtCopyWithImpl(Art _value, $Res Function(Art) _then)
      : super(_value, (v) => _then(v as Art));

  @override
  Art get _value => super._value as Art;

  @override
  $Res call({
    Object? image = freezed,
  }) {
    return _then(Art(
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Art implements Art {
  const _$Art({this.image, String? $type}) : $type = $type ?? 'art';

  factory _$Art.fromJson(Map<String, dynamic> json) => _$$ArtFromJson(json);

  @override
  final String? image;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'NftType.art(image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Art &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  $ArtCopyWith<Art> get copyWith => _$ArtCopyWithImpl<Art>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NftSkin skinColor) skin,
    required TResult Function(String? colorHex, String? backgroundImage)
        background,
    required TResult Function(String? image) art,
  }) {
    return art(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(NftSkin skinColor)? skin,
    TResult Function(String? colorHex, String? backgroundImage)? background,
    TResult Function(String? image)? art,
  }) {
    return art?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NftSkin skinColor)? skin,
    TResult Function(String? colorHex, String? backgroundImage)? background,
    TResult Function(String? image)? art,
    required TResult orElse(),
  }) {
    if (art != null) {
      return art(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Skin value) skin,
    required TResult Function(Backgorund value) background,
    required TResult Function(Art value) art,
  }) {
    return art(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Skin value)? skin,
    TResult Function(Backgorund value)? background,
    TResult Function(Art value)? art,
  }) {
    return art?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Skin value)? skin,
    TResult Function(Backgorund value)? background,
    TResult Function(Art value)? art,
    required TResult orElse(),
  }) {
    if (art != null) {
      return art(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtToJson(this);
  }
}

abstract class Art implements NftType {
  const factory Art({String? image}) = _$Art;

  factory Art.fromJson(Map<String, dynamic> json) = _$Art.fromJson;

  String? get image;
  @JsonKey(ignore: true)
  $ArtCopyWith<Art> get copyWith => throw _privateConstructorUsedError;
}
