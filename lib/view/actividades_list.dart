import 'package:flutter/material.dart';

class ActividadesList extends StatefulWidget {
  const ActividadesList({super.key});

  @override
  State<ActividadesList> createState() => _ActividadesListState();
}

class _ActividadesListState extends State<ActividadesList> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
          //top: false,
          child: Container(
        alignment: Alignment.center,
        child: const Text('Actividades'),
      ));
  }
}

// todo hacer un widget que represente a cada elemento de la lista
