import 'package:flutter/material.dart';
import 'package:tfg_v1/customWidgets/actividad_preview.dart';
import 'package:tfg_v1/model/actividad.dart';
import '../model/Usuario.dart';

class ActividadesList extends StatefulWidget {
  const ActividadesList({super.key});

  @override
  State<ActividadesList> createState() => _ActividadesListState();
}

class _ActividadesListState extends State<ActividadesList> {
  @override
  Widget build(BuildContext context) {

    Usuario userJavi = Usuario(1, "jaflorido@alumnos.unex.es", "SilenTheKid"); // todo borrar
    Actividad actTest = Actividad(userJavi, "Ir al parke a exarse unas pipas yasabes bro", "El parke", DateTime.now()); // todo borrar

    return SafeArea(
      //top: false,
      child: ListView(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
        children: [ // todo get toda la info de la API
          ActividadPreview(
              user: userJavi,
              actividad: actTest,
          ),
          ActividadPreview(
            user: userJavi,
            actividad: actTest,
          ),
          ActividadPreview(
            user: userJavi,
            actividad: actTest,
          ),
        ],
      )
    );
  }
}
