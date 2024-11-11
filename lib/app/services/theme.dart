
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
/// The [AppTheme] defines light and dark themes for the app.
///
/// Theme setup for FlexColorScheme package v8.
/// Use same major flex_color_scheme package version. If you use a
/// lower minor version, some properties may not be supported.
/// In that case, remove them after copying this theme to your
/// app or upgrade package to version 8.0.0.
///
/// Use in [MaterialApp] like this:
///
/// MaterialApp(
///  theme: AppTheme.light,
///  darkTheme: AppTheme.dark,
///  :
/// );
sealed class AppTheme {
  // The defined light theme.
  static ThemeData light = FlexThemeData.light(
    scheme: FlexScheme.materialBaseline,
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      useM2StyleDividerInM3: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      navigationRailUseIndicator: true,
      navigationRailLabelType: NavigationRailLabelType.all,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
  // The defined dark theme.
  static ThemeData dark = FlexThemeData.dark(
    scheme: FlexScheme.materialBaseline,
    subThemesData: const FlexSubThemesData(
      interactionEffects: true,
      tintedDisabledControls: true,
      blendOnColors: true,
      useM2StyleDividerInM3: true,
      inputDecoratorIsFilled: true,
      inputDecoratorBorderType: FlexInputBorderType.outline,
      alignedDropdown: true,
      navigationRailUseIndicator: true,
      navigationRailLabelType: NavigationRailLabelType.all,
    ),
    visualDensity: FlexColorScheme.comfortablePlatformDensity,
    cupertinoOverrideTheme: const CupertinoThemeData(applyThemeToAll: true),
  );
}

const ColorScheme lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xff6750a4),
  onPrimary: Color(0xffffffff),
  primaryContainer: Color(0xffeaddff),
  onPrimaryContainer: Color(0xff000000),
  primaryFixed: Color(0xffddd7eb),
  primaryFixedDim: Color(0xffbbb1d8),
  onPrimaryFixed: Color(0xff2b2145),
  onPrimaryFixedVariant: Color(0xff332851),
  secondary: Color(0xff625b71),
  onSecondary: Color(0xffffffff),
  secondaryContainer: Color(0xffe8def8),
  onSecondaryContainer: Color(0xff000000),
  secondaryFixed: Color(0xffdcdae1),
  secondaryFixedDim: Color(0xffbcb8c3),
  onSecondaryFixed: Color(0xff232129),
  onSecondaryFixedVariant: Color(0xff2c2933),
  tertiary: Color(0xff7d5260),
  onTertiary: Color(0xffffffff),
  tertiaryContainer: Color(0xffffd8e4),
  onTertiaryContainer: Color(0xff000000),
  tertiaryFixed: Color(0xffe4d7db),
  tertiaryFixedDim: Color(0xffc9b4bb),
  onTertiaryFixed: Color(0xff2e1e23),
  onTertiaryFixedVariant: Color(0xff39252c),
  error: Color(0xffba1a1a),
  onError: Color(0xffffffff),
  errorContainer: Color(0xffffdad6),
  onErrorContainer: Color(0xff000000),
  surface: Color(0xfffcfcfc),
  onSurface: Color(0xff111111),
  surfaceDim: Color(0xffe0e0e0),
  surfaceBright: Color(0xfffdfdfd),
  surfaceContainerLowest: Color(0xffffffff),
  surfaceContainerLow: Color(0xfff8f8f8),
  surfaceContainer: Color(0xfff3f3f3),
  surfaceContainerHigh: Color(0xffededed),
  surfaceContainerHighest: Color(0xffe7e7e7),
  onSurfaceVariant: Color(0xff393939),
  outline: Color(0xff919191),
  outlineVariant: Color(0xffd1d1d1),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xff2a2a2a),
  onInverseSurface: Color(0xfff1f1f1),
  inversePrimary: Color(0xfff0e9ff),
  surfaceTint: Color(0xff6750a4),
);

/// Dark [ColorScheme] made with FlexColorScheme v8.0.0.
/// Requires Flutter 3.22.0 or later.
const ColorScheme darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xffd0bcff),
  onPrimary: Color(0xff000000),
  primaryContainer: Color(0xff4f378b),
  onPrimaryContainer: Color(0xffffffff),
  primaryFixed: Color(0xffddd7eb),
  primaryFixedDim: Color(0xffbbb1d8),
  onPrimaryFixed: Color(0xff2b2145),
  onPrimaryFixedVariant: Color(0xff332851),
  secondary: Color(0xffccc2dc),
  onSecondary: Color(0xff000000),
  secondaryContainer: Color(0xff4a4458),
  onSecondaryContainer: Color(0xffffffff),
  secondaryFixed: Color(0xffdcdae1),
  secondaryFixedDim: Color(0xffbcb8c3),
  onSecondaryFixed: Color(0xff232129),
  onSecondaryFixedVariant: Color(0xff2c2933),
  tertiary: Color(0xffefb8c8),
  onTertiary: Color(0xff000000),
  tertiaryContainer: Color(0xff633b48),
  onTertiaryContainer: Color(0xffffffff),
  tertiaryFixed: Color(0xffe4d7db),
  tertiaryFixedDim: Color(0xffc9b4bb),
  onTertiaryFixed: Color(0xff2e1e23),
  onTertiaryFixedVariant: Color(0xff39252c),
  error: Color(0xffffb4ab),
  onError: Color(0xff000000),
  errorContainer: Color(0xff93000a),
  onErrorContainer: Color(0xffffffff),
  surface: Color(0xff080808),
  onSurface: Color(0xfff1f1f1),
  surfaceDim: Color(0xff060606),
  surfaceBright: Color(0xff2c2c2c),
  surfaceContainerLowest: Color(0xff010101),
  surfaceContainerLow: Color(0xff0e0e0e),
  surfaceContainer: Color(0xff151515),
  surfaceContainerHigh: Color(0xff1d1d1d),
  surfaceContainerHighest: Color(0xff282828),
  onSurfaceVariant: Color(0xffcacaca),
  outline: Color(0xff777777),
  outlineVariant: Color(0xff414141),
  shadow: Color(0xff000000),
  scrim: Color(0xff000000),
  inverseSurface: Color(0xffe8e8e8),
  onInverseSurface: Color(0xff2a2a2a),
  inversePrimary: Color(0xff5d556a),
  surfaceTint: Color(0xffd0bcff),
);


extension ThemeService on BuildContext {
  ThemeData get theme => Theme.of(this) ;
}