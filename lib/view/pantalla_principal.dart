import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tfg_v1/view/actividades_list.dart';
import 'package:tfg_v1/view/ajustes.dart';
import 'package:tfg_v1/view/theme/theme.dart';
import '../model/Usuario.dart';
import '../model/actividad.dart';
import 'pantalla_perfil.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int currentPageIndex = 0;
  int currentDrawerIndex = 0; // todo usar para cargar la pantalla del drawer

  Drawer generarDrawer(ThemeNotifier themeNotifier) {
    return Drawer(
      // ListView nos permitirá tener un Drawer scrolleable
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PantallaPerfil())
                );
              },
              child: const CircleAvatar(
                foregroundImage: AssetImage("assets/SilenTheKid.jpg"),
              ),
            ), // todo cargar la foto de la BD / quitar const
            //currentAccountPictureSize: Size(width, height),
            accountName: const Text("[Username]"), // todo quitar const cuando se recoja info de API
            accountEmail: const Text("mail@alumnos.unex.es"),
            otherAccountsPictures: [
              IconButton(
                  icon: Icon(themeNotifier.modo
                      ? Icons.wb_sunny          // modo == true -> Modo Claro
                      : Icons.nightlight_round  // modo == false -> Modo Oscuro
                  ),
                  onPressed: () {
                    themeNotifier.modo = !themeNotifier.modo; // Invertimos la selección
                  })
            ],
          ),
          ListTile(
            title: const Text('Perfil'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaPerfil())
              );
            },
          ),
          ListTile(
            title: const Text('Actividades Pendientes'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Ajustes'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const PantallaAjustes())
              );
            },
          ),
          ListTile(
            title: const Text('Solicitudes de amistad'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          const Divider(
            // todo revisar barrita separadora cambiar según tema
            color: Colors.black,
            thickness: 1,
            height: 20,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            title: const Text('FAQ'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Text('Invitar amigos'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
          const AboutListTile( // <-- SEE HERE
            icon: Icon(
              Icons.info,
            ),
            applicationIcon: Icon(
              Icons.info_outline,
            ),
            applicationName: 'SilenApp',
            applicationVersion: 'v1.0.0',
            applicationLegalese: 'Javier Florido Cartolano (UEx, 2023)',
            aboutBoxChildren: [
              // contenido
            ],
            child: Text('About'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(builder: (context, ThemeNotifier themeNotifier, child) {
      return Scaffold(
          appBar: AppBar(
            title: const Text("SilenApp"), // todo poner nombre de la pestaña
            actions: const [
              Icon(Icons.more_vert),

              /// todo poner foto de perfil (o en Drawer)???
            ],
          ),
          drawer: generarDrawer(themeNotifier),
          body: SafeArea(
            //top: false,
            child: <Widget>[
              const ActividadesList(), // generamos la pantalla ActividadesList aquí

              Container(
                alignment: Alignment.center,
                child: const Text('Buscar'),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text('Notificaciones'),
              ),
              Container(
                alignment: Alignment.center,
                child: const Text('Mensajes Directos'),
              ),
            ][currentPageIndex],
          ),
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              setState(() {
                currentPageIndex = index;
              });
            },
            selectedIndex: currentPageIndex,
            destinations: const <Widget>[
              // los iconos de la barra
              NavigationDestination(
                selectedIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: 'Actividades',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.search),
                icon: Icon(Icons.search_outlined),
                label: 'Buscar',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.notifications),
                icon: Icon(Icons.notifications_none_outlined),
                label: 'Notificaciones',
              ),
              NavigationDestination(
                selectedIcon: Icon(Icons.mail),
                icon: Icon(Icons.mail_outline),
                label: 'Mensajes',
              ),
            ],
          ));
    });
  }
}
