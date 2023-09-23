import 'package:flutter/material.dart';

class ExtraColors {
  //primary
  static const Color _slateBlue = const Color(0xff6c5dd3);
  static const Color _lavenderBlue = const Color(0xffcfc8ff);

  get primary => _slateBlue;
  get secondary => _lavenderBlue;

  //semantic
  static const Color _carnationPink = const Color(0xffffa2c0);
  static const Color _topaz = const Color(0xffffce73);
  static const Color _nonPhotoBlue = const Color(0xffA0D7E7);
  static const Color _paleGreen = const Color(0xffa5f59c);
  static const Color _fireOpal = const Color(0xffe44f4f);

  get semainticPink => _carnationPink;
  get semainticTopaz => _topaz;
  get semainticBlue => _nonPhotoBlue;
  get semainticGreen => _paleGreen;
  get semainticRed => _fireOpal;

  //neutral
  static const Color _charlestonGreen = const Color(0xff262A34);
  static const Color _blackCoral = const Color(0xff5E6272);
  static const Color _romanSliver = const Color(0xff808191);
  static const Color _white = const Color(0xffffffff);

  get neutralWhite => _white;
  get neutralSliver => _romanSliver;
  get neutralBlack => _blackCoral;
  get neutralGreen => _charlestonGreen;

  //background
  static const Color _darkGunmetal = const Color(0xff1F2128);
  get background => _darkGunmetal;

  //gradient 1
  static const Color _jordyBlue = const Color(0xff8E96FF);

  get graidentBlue => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_slateBlue, _jordyBlue]);
  //g2
  static const Color _budGreen = const Color(0xff6EA95C);
  static const Color _pistachio = const Color(0xff9ADB7F);
  get graidentGreen => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_budGreen, _pistachio]);
  //g3
  static const Color _coral = const Color(0xffFF7A55);
  static const Color _macaranionAndCheese = const Color(0xffFFB28E);
  get graidentCoral => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_coral, _macaranionAndCheese]);
  //g4
  static const Color _aquamarine = const Color(0xff86FFCA);
  static const Color _aeroBlue = const Color(0xffBBFFE7);
  get graidentAqua => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_aquamarine, _aeroBlue]);

  //g5
  static const Color _diamond = const Color(0xffC1E1FF);
  static const Color _water = const Color(0xffCDE7FF);
  get graidentDiamon => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_diamond, _water]);
  //g6
  static const Color _mauve = const Color(0xffDBB0FD);
  static const Color _darkMauve = const Color(0xffE2BDFF);
  get graidentViolet => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_mauve, _darkMauve]);
  //g7
  static const Color _royalBlue = const Color(0xff4268DB);
  static const Color _electricBlue = const Color(0xff8CF4FF);
  get graidenRoyal => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_royalBlue, _electricBlue]);
}
