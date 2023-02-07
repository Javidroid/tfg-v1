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

/// Esta clase se encarga de representar visualmente un elemento de previsualización de una [Actividad].
///
/// Esta previsualización recoge la información mínima necesaria para que un usuario vea de qué trata
/// la [Actividad] junto al resto de Actividades publicadas en la lista.
class ActividadPreview extends StatefulWidget {
  const ActividadPreview({Key? key}) : super(key: key);

  @override
  State<ActividadPreview> createState() => _ActividadPreviewState();
}

class _ActividadPreviewState extends State<ActividadPreview> {
  @override
  Widget build(BuildContext context) {
    // TODO: hacer la previsualiación de la actividad
    /* IDEAS:
     * todo mirar en los componentes de elementos de una lista (ListTile)
     *
     */

    return const Placeholder();
  }
}
