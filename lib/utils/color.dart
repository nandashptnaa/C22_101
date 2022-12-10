import 'package:flutter/material.dart';

class ColorConstant {
  static Color black9007f = fromHex('#7f000000');

  static Color bluegray700Ea = fromHex('#ea46724d');

  static Color lightBlue200 = fromHex('#8ad5ff');

  static Color red600 = fromHex('#fb2626');

  static Color lightBlueA200 = fromHex('#3eb9ff');

  static Color lightBlue700 = fromHex('#008ad8');

  static Color blueA100 = fromHex('#7ab7ff');

  static Color lightBlue500 = fromHex('#00a3ff');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#fcfcfc');

  static Color indigoA10033 = fromHex('#33828bff');

  static Color indigo900Cc = fromHex('#cc1c1a67');

  static Color red800Cc = fromHex('#ccc61e1e');

  static Color black900 = fromHex('#000000');

  static Color gray904 = fromHex('#1b1b1b');

  static Color gray501 = fromHex('#999999');

  static Color gray600 = fromHex('#776666');

  static Color gray700 = fromHex('#555555');

  static Color gray502 = fromHex('#979797');

  static Color gray400 = fromHex('#b1b1b1');

  static Color gray500 = fromHex('#9586a8');

  static Color gray902 = fromHex('#262626');

  static Color gray800 = fromHex('#473f3f');

  static Color indigo50 = fromHex('#e0ddff');

  static Color gray503 = fromHex('#aaaaaa');

  static Color redA100 = fromHex('#ff7676');

  static Color gray900 = fromHex('#131313');

  static Color gray801 = fromHex('#404040');

  static Color bluegray100 = fromHex('#d9d9d9');

  static Color bluegray900 = fromHex('#2f2f2f');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray300 = fromHex('#9eb3b7');

  static Color indigo902 = fromHex('#2d0c57');

  static Color indigo903 = fromHex('#1e2274');

  static Color indigo900 = fromHex('#1c1a67');

  static Color indigo901 = fromHex('#1b1a67');

  static Color black90019 = fromHex('#19000000');

  static Color bluegray700D8 = fromHex('#d846724d');

  static Color whiteA700 = fromHex('#ffffff');

  static Color indigo800 = fromHex('#263a96');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
