import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _settingsFamily = 'Settings';
  static const String _ballMoveOnTwoLinesFamily = 'BallMoveOnTwoLines';
  static const String _navBarIconsFamily = 'NavBarIcons';
  static const String _searchBarIconFamily = 'SearchBarIcon';
  static const String _dumbbellIconFamily = 'DumbbellIcon';
  static const String _streakFireIconFamily = 'StreakFireIcon';
  static const String _myFlutterAppFamily = 'MyFlutterApp';

  // Settings
  static const IconData kgray = IconData(0xe000, fontFamily: _settingsFamily);

  // BallMoveOnTwoLines
  static const IconData kslidersHorizontalLightStreamlinePhosphor =
      IconData(0xe801, fontFamily: _ballMoveOnTwoLinesFamily);

  // NavBarIcons
  static const IconData kshape =
      IconData(0xe800, fontFamily: _navBarIconsFamily);
  static const IconData khome =
      IconData(0xe801, fontFamily: _navBarIconsFamily);
  static const IconData kperson =
      IconData(0xe802, fontFamily: _navBarIconsFamily);

  // SearchBarIcon
  static const IconData kphMagnifyingGlassThin =
      IconData(0xe800, fontFamily: _searchBarIconFamily);

  // DumbbellIcon
  static const IconData kstreamlinePlumpDumbellSolid =
      IconData(0xe800, fontFamily: _dumbbellIconFamily);

  // StreakFireIcon
  static const IconData kvector =
      IconData(0xe800, fontFamily: _streakFireIconFamily);

  // MyFlutterApp
  static const IconData kstashTargetLight =
      IconData(0xe800, fontFamily: _myFlutterAppFamily);
  static const IconData kfa7RegularTrashCan =
      IconData(0xe801, fontFamily: _myFlutterAppFamily);
  static const IconData kcircumGift =
      IconData(0xe802, fontFamily: _myFlutterAppFamily);
}
