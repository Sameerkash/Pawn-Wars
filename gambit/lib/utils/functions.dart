import 'package:flutter/widgets.dart';
import 'package:gambit/models/enums/enums.dart';
import 'package:squares/squares.dart';

BoardTheme getBoardFromNFTtype(NftSkin skin) {
  switch (skin) {
    case NftSkin.blue:
      return BoardTheme.BLUEGREY;
    case NftSkin.pink:
      return BoardTheme.PINK;
    default:
      return BoardTheme.BROWN;
  }
}

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
