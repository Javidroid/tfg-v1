import 'package:flutter/material.dart';

class PantallaPerfil extends StatefulWidget {
  const PantallaPerfil({Key? key}) : super(key: key);

  @override
  State<PantallaPerfil> createState() => _PantallaPerfilState();
}

class _PantallaPerfilState extends State<PantallaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"), // todo poner nombre de la pestaña
      ),
      body: const SafeArea(
        //top: false,
        child: Center(child: Text("Perfil")),
      ),
    );
  }
}
