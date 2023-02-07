import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_v1/view/theme/theme.dart';
import 'package:tfg_v1/view/actividades_detail.dart';
import 'package:tfg_v1/view/actividades_list.dart';
import 'package:tfg_v1/view/pantalla_login.dart';
import 'package:tfg_v1/view/pantalla_registro.dart';
import 'view/pantalla_principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeNotifier(),
      child: Consumer<ThemeNotifier>(builder: (context, ThemeNotifier themeNotifier, child) {
        return MaterialApp(
          title: 'TFG_v1',

          theme: ThemeGenerator.generarTemaClaro(),
          darkTheme: ThemeGenerator.generarTemaOscuro(),

          themeMode: themeNotifier.modo
              ? // según el modo guardado en SharedPreferences
              ThemeMode.light
              : ThemeMode.dark,

          // todo revisar si se necesitan las rutas
          // home: const PantallaPrincipal(),
          initialRoute: '/auth/login',

          // todo estudiar rutas
          routes: {
            '/': (context) => const PantallaPrincipal(),
            '/auth/login': (context) => const PantallaLogin(), // fixme Login deja volver hacia atrás
            '/auth/registro': (context) => const PantallaRegistro(),
            '/actividades': (context) => const ActividadesList(),
            '/actividades/detail': (context) => const ActividadesDetail(),
            '/perfil': (context) => const PantallaPrincipal(), // todo navegar perfil
          },
        );
      }),
    );
  }
}
