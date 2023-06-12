import 'package:flutter/material.dart';

class CustomIcons {
  static CustomIcons? _instance;
  static CustomIcons get instance {
    _instance ??= CustomIcons._init();
    return _instance!;
  }

  CustomIcons._init();

  static const _kFontFam = 'CUSTOM_ICONS';
  static const String? _kFontPkg = null;

  final IconData success = const IconData(0xe808, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  final IconData close = const IconData(0xe80a, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  final IconData failed = const IconData(0xe80c, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  final IconData lock = const IconData(0xe80d, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  final IconData email = const IconData(0xe80e, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  final IconData user = const IconData(0xe80f, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  final IconData phone = const IconData(0xe810, fontFamily: _kFontFam, fontPackage: _kFontPkg);
  final IconData at = const IconData(0xe811, fontFamily: _kFontFam, fontPackage: _kFontPkg);
}
