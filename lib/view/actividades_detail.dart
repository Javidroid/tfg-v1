import 'package:flutter/material.dart';

class ActividadesDetail extends StatefulWidget {
  const ActividadesDetail({super.key});

  @override
  State<ActividadesDetail> createState() => _ActividadesDetailState();
}

class _ActividadesDetailState extends State<ActividadesDetail> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      //top: false,
        child: Container(
          alignment: Alignment.center,
          child: const Text('ACTIVIDADES DETAIL'),
        ));
  }
}
