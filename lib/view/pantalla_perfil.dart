import 'package:flutter/material.dart';
import 'package:tfg_v1/customWidgets/widgets_perfil.dart';
import 'package:tfg_v1/model/Usuario.dart';

class PantallaPerfil extends StatefulWidget {
  const PantallaPerfil({Key? key,}) : super(key: key);
  //final Usuario user;

  @override
  State<PantallaPerfil> createState() => _PantallaPerfilState();
}

class _PantallaPerfilState extends State<PantallaPerfil> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("[Username]"), // todo poner nombre de la pestaña
        actions: [
          ElevatedButton(
            onPressed: () {
              // todo editar perfil
            },
            child: const Text("Editar perfil"),
          )
        ],
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.02),
          children: const [
            CabeceraPerfil(
              nAmigos: 123,
              nActividades: 32,
              centro: "Escuela Politécnica",
              edad: 21,
              fotoPerfil: "assets/SilenTheKid.jpg",
              nombre: "Javier Florido",
              titulacion: "Ingeniería de Software",
              descripcion: "Lorem Ipsum is simply dummy text of the printing and typesetting "
                  "industry. It has been the industry's standard dummy text "
                  "ever since the 1500s, when an unknown printer took a galley of type "
                  "and scrambled it to make a type specimen book.",
            ),

            DefaultTabController(
                length: 2,
                child: TabBar(
                    tabs: [
                      Tab(text: "Actividades creadas",),
                      Tab(text: "Actividades apuntadas",),
                    ]
                )
            )
          ],
        ),
      ),
    );
  }
}
