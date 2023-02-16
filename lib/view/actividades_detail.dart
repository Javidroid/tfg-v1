import 'package:flutter/material.dart';
import 'package:tfg_v1/model/actividad.dart';

class ActividadesDetail extends StatefulWidget {
  const ActividadesDetail({super.key, required this.actividad});

  final Actividad actividad;

  @override
  State<ActividadesDetail> createState() => _ActividadesDetailState();
}

class _ActividadesDetailState extends State<ActividadesDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("[Actividad Detail]"), // todo poner nombre de la pestaña
        actions: [
          ElevatedButton(
            onPressed: () {
              // todo editar perfil
            },
            child: const Text("Unirse"),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
          children: const [
            Text("Actividad Detail")
          ],
        ),
      ),
    );
  }
}
