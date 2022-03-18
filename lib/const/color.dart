import 'package:flutter/material.dart';


class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

final Color color1 = HexColor("#5E17EB");

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

const MaterialColor customSwatch = MaterialColor(
  0xFF5E17EB,
  <int, Color>{
    50: Color(0xFFECE3FD),
    100: Color(0xFFCFB9F9),
    200: Color(0xFFAF8BF5),
    300: Color(0xFF8E5DF1),
    400: Color(0xFF763AEE),
    500: Color(0xFF5E17EB),
    600: Color(0xFF5614E9),
    700: Color(0xFF4C11E5),
    800: Color(0xFF420DE2),
    900: Color(0xFF3107DD),
  },
);

const MaterialColor customSwatch2 = MaterialColor(
  0xFFA4C639,
  <int, Color>{
    50: Color(0xFFF4F8E7),
    100: Color(0xFFE4EEC4),
    200: Color(0xFFD2E39C),
    300: Color(0xFFBFD774),
    400: Color(0xFFB2CF57),
    500: Color(0xFFA4C639),
    600: Color(0xFF9CC033),
    700: Color(0xFF92B92C),
    800: Color(0xFF89B124),
    900: Color(0xFF78A417),
  },
);