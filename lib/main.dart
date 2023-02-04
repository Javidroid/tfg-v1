import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:tfg_v1/view/actividades_detail.dart';
import 'package:tfg_v1/view/actividades_list.dart';
import 'view/pantalla_principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ThemeData _generarTemaClaro() {
    return FlexThemeData.light(
      colors: const FlexSchemeColor(
        primary: Color(0xff00b28c),
        primaryContainer: Color(0xffd0e4ff),
        secondary: Color(0xffeaaf0f),
        secondaryContainer: Color(0xffffdbcf),
        tertiary: Color(0xff26d8b2),
        tertiaryContainer: Color(0xff95f0ff),
        appBarColor: Color(0xffffdbcf),
        error: Color(0xffb00020),
      ),
      usedColors: 4,
      surfaceMode: FlexSurfaceMode.highScaffoldLevelSurface,
      blendLevel: 20,
      appBarOpacity: 0.98,
      appBarElevation: 4.0,
      subThemesData: const FlexSubThemesData(
        elevatedButtonSchemeColor: SchemeColor.secondary,
        elevatedButtonSecondarySchemeColor: SchemeColor.onSecondary,
        toggleButtonsSchemeColor: SchemeColor.secondary,
        switchSchemeColor: SchemeColor.primary,
        radioSchemeColor: SchemeColor.primary,
        sliderBaseSchemeColor: SchemeColor.primary,
        inputDecoratorRadius: 25.0,
        inputDecoratorUnfocusedHasBorder: false,
        chipSchemeColor: SchemeColor.primary,
        chipRadius: 30.0,
        cardRadius: 25.0,
        popupMenuRadius: 10.0,
        popupMenuElevation: 15.0,
        tabBarIndicatorSchemeColor: SchemeColor.secondary,
        navigationBarIndicatorSchemeColor: SchemeColor.primary,
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
        keepPrimary: true,
        keepSecondary: true,
      ),
      tones: FlexTones.highContrast(Brightness.light),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
    );
  }

  ThemeData _generarTemaOscuro() {
    return FlexThemeData.dark(
      colors: const FlexSchemeColor(
        primary: Color(0xff00b28c),
        primaryContainer: Color(0xffd0e4ff),
        secondary: Color(0xffeaaf0f),
        secondaryContainer: Color(0xffffdbcf),
        tertiary: Color(0xff26d8b2),
        tertiaryContainer: Color(0xff95f0ff),
        appBarColor: Color(0xffffdbcf),
        error: Color(0xffb00020),
      ),
      usedColors: 4,
      surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
      blendLevel: 15,
      subThemesData: const FlexSubThemesData(
        textButtonSchemeColor: SchemeColor.secondary,
        // mod
        elevatedButtonSchemeColor: SchemeColor.secondary,
        elevatedButtonSecondarySchemeColor: SchemeColor.onSecondary,
        outlinedButtonSchemeColor: SchemeColor.secondary,
        // mod
        toggleButtonsSchemeColor: SchemeColor.secondary,
        // mod
        switchSchemeColor: SchemeColor.secondary,
        // mod
        checkboxSchemeColor: SchemeColor.secondary,
        // mod
        radioSchemeColor: SchemeColor.secondary,
        // mod
        sliderBaseSchemeColor: SchemeColor.secondary,
        // mod
        inputDecoratorRadius: 25.0,
        inputDecoratorUnfocusedHasBorder: false,
        chipSchemeColor: SchemeColor.secondary,
        // mod
        chipRadius: 30.0,
        cardRadius: 25.0,
        popupMenuRadius: 10.0,
        popupMenuElevation: 15.0,
        tabBarItemSchemeColor: SchemeColor.secondary,
        tabBarIndicatorSchemeColor: SchemeColor.primary,
        bottomNavigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
        // mod
        bottomNavigationBarSelectedIconSchemeColor: SchemeColor.secondary,
        // mod
        navigationBarSelectedLabelSchemeColor: SchemeColor.secondary,
        // mod
        navigationBarSelectedIconSchemeColor: SchemeColor.secondary,
        // mod
        navigationBarIndicatorSchemeColor: SchemeColor.secondary, // mod
      ),
      keyColors: const FlexKeyColors(
        useSecondary: true,
      ),
      tones: FlexTones.highContrast(Brightness.dark),
      visualDensity: FlexColorScheme.comfortablePlatformDensity,
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TFG_v1',

      // modularizamos la generación del tema
      theme: _generarTemaClaro(),
      darkTheme: _generarTemaOscuro(),
      // todo configurar para que usuario elija
      themeMode: ThemeMode.system,

      // todo revisar si se necesitan las rutas
      // home: const PantallaPrincipal(),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaPrincipal(),
        '/actividades': (context) => const ActividadesList(),
        '/actividades/detail': (context) => const ActividadesDetail(),
        '/perfil': (context) => const PantallaPrincipal(), // todo navegar perfil
      },
    );
  }
}
