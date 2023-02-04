import 'package:flutter/material.dart';
import 'package:tfg_v1/view/actividades_list.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  State<PantallaPrincipal> createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("SilenApp"), // todo poner nombre de la pestaña
          actions: const [
            Icon(Icons.more_vert),

            /// todo poner foto de perfil
          ],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                ),
                child: const Text('[Username]?'),
                // todo meter los elementos necesarios en la cabecera del Drawer
              ),
              ListTile(
                title: const Text('Item 1'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: SafeArea(
          //top: false,
          child: <Widget>[
            const ActividadesList(),
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
  }
}
