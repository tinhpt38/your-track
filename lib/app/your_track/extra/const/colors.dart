import 'package:flutter/material.dart';

class ExtraColors {
  //primary
  final Color _slateBlue = const Color(0xff6c5dd3);
  final Color _lavenderBlue = const Color(0xffcfc8ff);

  get primary => _slateBlue;
  get secondary => _lavenderBlue;

  //semantic
  final Color _carnationPink = const Color(0xffffa2c0);
  final Color _topaz = const Color(0xffffce73);
  final Color _nonPhotoBlue = const Color(0xffA0D7E7);
  final Color _paleGreen = const Color(0xffa5f59c);
  final Color _fireOpal = const Color(0xffe44f4f);

  get semainticPink => _carnationPink;
  get semainticTopaz => _topaz;
  get semainticBlue => _nonPhotoBlue;
  get semainticGreen => _paleGreen;
  get semainticRed => _fireOpal;

  //neutral
  final Color _charlestonGreen = const Color(0xff262A34);
  final Color _blackCoral = const Color(0xff5E6272);
  final Color _romanSliver = const Color(0xff808191);
  final Color _white = const Color(0xffffffff);

  get neutralWhite => _white;
  get neutralSliver => _romanSliver;
  get neutralBlack => _blackCoral;
  get neutralGreen => _charlestonGreen;

  //background
  final Color _darkGunmetal = const Color(0xff1F2128);
  get background => _darkGunmetal;

  //gradient 1
  final Color _jordyBlue = const Color(0xff8E96FF);

  get graidentBlue => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_slateBlue, _jordyBlue]);
  //g2
  final Color _budGreen = const Color(0xff6EA95C);
  final Color _pistachio = const Color(0xff9ADB7F);
  get graidentGreen => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_budGreen, _pistachio]);
  //g3
  final Color _coral = const Color(0xffFF7A55);
  final Color _macaranionAndCheese = const Color(0xffFFB28E);
  get graidentCoral => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_coral, _macaranionAndCheese]);
  //g4
  final Color _aquamarine = const Color(0xff86FFCA);
  final Color _aeroBlue = const Color(0xffBBFFE7);
  get graidentAqua => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_aquamarine, _aeroBlue]);

  //g5
  final Color _diamond = const Color(0xffC1E1FF);
  final Color _water = const Color(0xffCDE7FF);
  get graidentDiamon => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_diamond, _water]);
  //g6
  final Color _mauve = const Color(0xffDBB0FD);
  final Color _darkMauve = const Color(0xffE2BDFF);
  get graidentViolet => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_mauve, _darkMauve]);
  //g7
  final Color _royalBlue = const Color(0xff4268DB);
  final Color _electricBlue = const Color(0xff8CF4FF);
  get graidenRoyal => LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [_royalBlue, _electricBlue]);
}
