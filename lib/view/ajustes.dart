import 'package:flutter/material.dart';

class PantallaAjustes extends StatefulWidget {
  const PantallaAjustes({Key? key}) : super(key: key);

  @override
  State<PantallaAjustes> createState() => _PantallaAjustesState();
}

class _PantallaAjustesState extends State<PantallaAjustes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ajustes"), // todo poner nombre de la pestaña
      ),
      body: const SafeArea(
        //top: false,
        child: Center(child: Text("Ajustes")),
      ),
    );
  }
}
