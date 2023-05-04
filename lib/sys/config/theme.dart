import '../../sys/config/constants.dart';
import 'package:flutter/material.dart';

// textTheme: themeData.textTheme.copyWith(
// titleMedium: lightThemeData.textTheme.titleMedium!.copyWith(
//   fontSize: 50,
// ),

class ThemeCfg {
  static final ThemeData appTheme = ThemeData(
    /// [primarySwatch]는 Material Design 테마 적용시 사용되는 기본 색상 팔레트,
    primarySwatch: ConstCfg.appColorScheme,
    // colorSchemeSeed: AppConst.appColorScheme,
    useMaterial3: ConstCfg.appUseMaterial3,
  );

  static final appDarkTheme = ThemeData(
    colorSchemeSeed: ConstCfg.appColorScheme,
    useMaterial3: ConstCfg.appUseMaterial3,
    brightness: Brightness.dark,
  );

  static TextStyle styleEmptyList(BuildContext context) =>
      Theme.of(context).textTheme.bodyLarge!.copyWith(
        color: getPrimaryColor(context),
        overflow: TextOverflow.ellipsis,
      );

  static TextStyle styleListTileTitle(BuildContext context) =>
      Theme.of(context).textTheme.titleMedium!.copyWith(
        color: Colors.black54,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      );
  static TextStyle styleListTileTitleCompleted(BuildContext context) =>
      Theme.of(context).textTheme.titleLarge!.copyWith(
        color: Colors.black12,
        decoration: TextDecoration.lineThrough,
        overflow: TextOverflow.ellipsis,
      );
  static TextStyle styleListTileSubtitle(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: Colors.black38,
      );
  static TextStyle styleListTileLabel(BuildContext context) =>
      Theme.of(context).textTheme.bodySmall!.copyWith(
        color: Colors.black38,
        overflow: TextOverflow.ellipsis,
      );

  static TextStyle styleSnackBaritle(BuildContext context) =>
      Theme.of(context).textTheme.bodyMedium!.copyWith(
        color: Theme.of(context).colorScheme.onPrimary,
        overflow: TextOverflow.ellipsis,
      );

  static Color getPrimaryColor(BuildContext context) =>
      Theme.of(context).colorScheme.primary;
  static Color getBackgroundColor(BuildContext context) =>
      Theme.of(context).colorScheme.background;
  static Color getInversePrimaryColor(BuildContext context) =>
      Theme.of(context).colorScheme.inversePrimary;
  static Color getSurfaceColor(BuildContext context) =>
      Theme.of(context).colorScheme.onBackground;
// static const TextStyle listTileSubtitleStyle = TextStyle(
//   color: Colors.black45,
//   fontSize: 12,
// );

}

