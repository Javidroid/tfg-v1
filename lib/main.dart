import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_v1/view/ajustes.dart';
import 'package:tfg_v1/view/perfil_view.dart';
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

          // todo estudiar y reestructurar rutas
          routes: {
            '/home': (context) => const PantallaPrincipal(),
            '/auth/login': (context) => const PantallaLogin(),
            '/auth/registro': (context) => const PantallaRegistro(),

            '/home/actividades': (context) => const ActividadesList(),
            '/home/actividades/detail': (context) => const ActividadesDetail(),

            '/home/universidad_list': (context) => const PantallaPrincipal(),
            '/home/universidad': (context) => const PantallaPrincipal(),
            '/home/centro': (context) => const PantallaPrincipal(), // todo cambiar
            '/home/puntoInteres': (context) => const PantallaPrincipal(),

            '/home/perfil': (context) => const PantallaPerfil(), // todo navegar perfil
            '/home/ajustes': (context) => const PantallaAjustes(), // todo navegar perfil
          },
        );
      }),
    );
  }
}
