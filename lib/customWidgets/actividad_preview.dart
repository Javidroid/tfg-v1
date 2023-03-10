import 'package:flutter/material.dart';
import 'package:tfg_v1/view/actividades_detail.dart';
import 'package:tfg_v1/view/theme/theme.dart';
import 'package:intl/intl.dart';

import '../model/Usuario.dart';
import '../model/actividad.dart';

/// Esta clase se encarga de representar visualmente un elemento de previsualización de una [Actividad].
///
/// Esta previsualización recoge la información mínima necesaria para que un usuario vea de qué trata
/// la [Actividad] junto al resto de Actividades publicadas en la lista.
class ActividadPreview extends StatefulWidget {
  final Usuario user;
  final Actividad actividad;

  const ActividadPreview({Key? key, required this.user, required this.actividad}) : super(key: key);

  @override
  State<ActividadPreview> createState() => _ActividadPreviewState();
}

class _ActividadPreviewState extends State<ActividadPreview> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ActividadesDetail(actividad: widget.actividad))
        );
      },
      child: Card(
        /// METER CATEGORÍA POR AHÍ O ALGO
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.01),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // todo revisar
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    foregroundImage: AssetImage(widget.user.perfil.foto),
                  ),
                  Text(
                    widget.actividad.lugar,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    DateFormat('dd-MM-yyyy, kk:mm').format(widget.actividad.fecha),
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01, horizontal: 0),
                child: Text( // todo alinear justificado
                  widget.actividad.desc,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontWeight: FontWeight.normal),
                  maxLines: 5,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "x gente inscrita",
                    style: TextStyle(fontSize: 12),
                  ),
                  ElevatedButton(
                    onPressed: (){},
                    child: const Text("Unirse"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
