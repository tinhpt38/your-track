// import 'package:flutter/material.dart';

// class ExtraColors {
//   //primary
//   static const Color _slateBlue = Color(0xff6c5dd3);
//   static const Color _lavenderBlue = Color(0xffcfc8ff);

//   static get primary => _slateBlue;
//   static get secondary => _lavenderBlue;

//   //semantic
//   static const Color _carnationPink = Color(0xffffa2c0);
//   static const Color _topaz = Color(0xffffce73);
//   static const Color _nonPhotoBlue = Color(0xffA0D7E7);
//   static const Color _paleGreen = Color(0xffa5f59c);
//   static const Color _fireOpal = Color(0xffe44f4f);

//   static get semainticPink => _carnationPink;
//   static get semainticTopaz => _topaz;
//   static get semainticBlue => _nonPhotoBlue;
//   static get semainticGreen => _paleGreen;
//   static get semainticRed => _fireOpal;

//   //neutral
//   static const Color _charlestonGreen = Color(0xff262A34);
//   static const Color _blackCoral = Color(0xff5E6272);
//   static const Color _romanSliver = Color(0xff808191);
//   static const Color _white = Color(0xffffffff);

//   static get neutralWhite => _white;
//   static get neutralSliver => _romanSliver;
//   static get neutralBlack => _blackCoral;
//   static get neutralGreen => _charlestonGreen;

//   //background
//   static const Color _darkGunmetal = Color(0xff1F2128);
//   static get background => _darkGunmetal;

//   //gradient 1
//   static const Color _jordyBlue = Color(0xff8E96FF);

//   static get graidentBlue => const LinearGradient(
//       begin: Alignment.bottomLeft,
//       end: Alignment.topRight,
//       colors: [_slateBlue, _jordyBlue]);
//   //g2
//   static const Color _budGreen = Color(0xff6EA95C);
//   static const Color _pistachio = Color(0xff9ADB7F);
//   static get graidentGreen => const LinearGradient(
//       begin: Alignment.bottomLeft,
//       end: Alignment.topRight,
//       colors: [_budGreen, _pistachio]);
//   //g3
//   static const Color _coral = Color(0xffFF7A55);
//   static const Color _macaranionAndCheese = Color(0xffFFB28E);
//   static get graidentCoral => const LinearGradient(
//       begin: Alignment.bottomLeft,
//       end: Alignment.topRight,
//       colors: [_coral, _macaranionAndCheese]);
//   //g4
//   static const Color _aquamarine = Color(0xff86FFCA);
//   static const Color _aeroBlue = Color(0xffBBFFE7);
//   static get graidentAqua => const LinearGradient(
//       begin: Alignment.bottomLeft,
//       end: Alignment.topRight,
//       colors: [_aquamarine, _aeroBlue]);

//   //g5
//   static const Color _diamond = Color(0xffC1E1FF);
//   static const Color _water = Color(0xffCDE7FF);
//   static get graidentDiamon => const LinearGradient(
//       begin: Alignment.bottomLeft,
//       end: Alignment.topRight,
//       colors: [_diamond, _water]);
//   //g6
//   static const Color _mauve = Color(0xffDBB0FD);
//   static const Color _darkMauve = Color(0xffE2BDFF);
//   static get violet => _mauve;
//   static get darkViolet => _darkMauve;
//   static get graidentViolet => const LinearGradient(
//       begin: Alignment.bottomLeft,
//       end: Alignment.topRight,
//       colors: [_mauve, _darkMauve]);
//   //g7
//   static const Color _royalBlue = Color(0xff4268DB);
//   static const Color _electricBlue = Color(0xff8CF4FF);
//   static get graidenRoyal => const LinearGradient(
//       begin: Alignment.bottomLeft,
//       end: Alignment.topRight,
//       colors: [_royalBlue, _electricBlue]);
// }

import 'package:flutter/material.dart';

class ExtraColors {
  //primary
  static const Color primary = Color(0xff6c5dd3);
  static const Color secondary = Color(0xffcfc8ff);
  //semantic
  static const Color semainticPink = Color(0xffffa2c0);
  static const Color semainticTopaz = Color(0xffffce73);
  static const Color semainticBlue = Color(0xffA0D7E7);
  static const Color semainticGreen = Color(0xffa5f59c);
  static const Color semainticRed = Color(0xffe44f4f);

  //neutral
  static const Color neutralGreen = Color(0xff262A34);
  static const Color neutralBlack = Color(0xff5E6272);
  static const Color neutralSliver = Color(0xff808191);
  static const Color neutralWhite = Color(0xffffffff);

  //background
  static const Color background = Color(0xff1F2128);

  //gradient 1
  static const Color jordyBlue = Color(0xff8E96FF);

  static const LinearGradient gradientBlue = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [primary, jordyBlue]);
  //g2

  static const Color budGreen = Color(0xff6EA95C);
  static const Color pistachio = Color(0xff9ADB7F);

  static const LinearGradient graidentGreen = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [budGreen, pistachio]);
  //g3

  static const Color coral = Color(0xffFF7A55);
  static const Color macaranionAndCheese = Color(0xffFFB28E);
  static const LinearGradient graidentCoral = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [coral, macaranionAndCheese]);
  //g4
  static const Color aquamarine = Color(0xff86FFCA);
  static const Color aeroBlue = Color(0xffBBFFE7);
  static get graidentAqua => const LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [aquamarine, aeroBlue]);

  //g5
  static const Color diamond = Color(0xffC1E1FF);
  static const Color water = Color(0xffCDE7FF);
  static const LinearGradient graidentDiamon = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [diamond, water]);
  //g6

  static const Color violet = Color(0xffDBB0FD);
  static const Color darkViolet = Color(0xffE2BDFF);
  static const LinearGradient graidentViolet = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [violet, darkViolet]);
  //g7

  static const Color royalBlue = Color(0xff4268DB);
  static const Color electricBlue = Color(0xff8CF4FF);

  static const LinearGradient graidenRoyal = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [royalBlue, electricBlue]);
}
