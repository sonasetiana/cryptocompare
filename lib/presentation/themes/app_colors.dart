
import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
  static const Color primary = Color(0xff666698);
  static const Color light = Color(0xff9594c9);
  static const Color dark = Color(0xff393c6a);
  static const Color black = Color(0xff1B1916);
  static const Color black2 = Color(0xff484034);
  static const Color black3 = Color(0xff989898);
  static const Color black4 = Color(0xffD8D8D9);
  // static const Color darkBrown = Color(0xff553A20);
  // static const Color brown = Color(0xffCD7F29);
  // static const Color brown20 = Color(0x33CD7F29);
  static const Color white = Color(0xffFFFFFF);
  static const Color white2 = Color(0xffFAFAFA);
  static const Color white3 = Color(0x80FFFFFF);
  static const Color white4 = Color(0xffF7F7F7);
  static const Color yellow = Color(0xffF2B01D);
  static const Color yellow2 = Color(0xffFFE299);
  static const Color yellow3 = Color(0xffFFF6E3);
  static const Color yellow4 = Color(0xffFFFAF0);
  static const Color border = Color(0xffEEEEEE);
  static const Color red = Color(0xffF83E33);
  static const Color pink = Color(0xffC92892);
  static const Color orange = Color(0xffF2761D);
  static const Color blue = Color(0xff41ACC3);
  static const Color blue1 = Color(0xff0085FF);
  static const Color green = Color(0xff41C36D);
  static const Color deepTaupe = Color(0xff71635D);

  static const gradient1 = LinearGradient(
    colors: [Color(0xffFFD27A), Color(0xffD2852A)],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const gradient2 = LinearGradient(
    colors: [Color(0x66FFF3E7), Color(0x66C97918)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const gradient3 = LinearGradient(
    colors: [Color(0x87FFE4BE), Color(0x00E87C2F)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const gradient4 = LinearGradient(
    colors: [Color(0xffFFF2D8), Color(0xffFFFFFF)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const gradient5 = LinearGradient(
    colors: [
      Color(0xB3000000),
      Color(0x00000000),
      Color(0x00c4c4c4),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const gradient6 = LinearGradient(
      colors: [Color(0xff74848C), Color(0xffEFEFEF), Color(0xff5E4E47)],
      begin: Alignment.centerLeft,
      end: Alignment.centerRight);
}