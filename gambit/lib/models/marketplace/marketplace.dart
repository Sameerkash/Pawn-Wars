import 'package:freezed_annotation/freezed_annotation.dart';
part 'marketplace.freezed.dart';
part 'marketplace.g.dart';


@freezed
class MarkeplaceItem with _$MarkeplaceItem {
  const factory MarkeplaceItem({
    required int itemId,
    required String nftContract,
    required int tokenId,
    required String seller,
    required String owner,
    required num price,
    required bool sold,
  }) = _MarkeplaceItem;

  factory MarkeplaceItem.fromJson(Map<String, dynamic> json) =>
      _$MarkeplaceItemFromJson(json);
}
