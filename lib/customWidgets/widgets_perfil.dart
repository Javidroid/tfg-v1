import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// La Cabecera del Perfil se divide en varias partes (por filas):
///
/// La Foto de Perfil y dos widgets personalizados que indican el número de amigos y
/// de actividades creadas por el usuario.
///
/// Nombre, edad, titulación y centro
///
/// Descripción
///
/// Intereses y logros
class CabeceraPerfil extends StatelessWidget {
  final int nAmigos, nActividades, edad;
  final String nombre, titulacion, centro, descripcion, fotoPerfil;

  const CabeceraPerfil({
    super.key,
    required this.nAmigos,
    required this.nActividades,
    required this.edad,
    required this.nombre,
    required this.titulacion,
    required this.centro,
    required this.descripcion,
    required this.fotoPerfil,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.008),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              CircleAvatar(
                radius: MediaQuery.of(context).size.height * 0.055,
                foregroundImage: AssetImage(fotoPerfil),
              ),
              botonCabeceraNumeros(context, nAmigos, 'Amigos'),
              botonCabeceraNumeros(context, nActividades, 'Actividades'),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$nombre, $edad",
              style: const TextStyle(fontSize: 18),
            ),
            Text(
              "$titulacion ($centro)",
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            ExpandableText(
              descripcion,
              textAlign: TextAlign.justify,
              expandText: 'más',
              collapseText: '(mostrar menos)',
              maxLines: 3,
              animation: true,
              expandOnTextTap: true,
              //collapseOnTextTap: true,
              linkEllipsis: false,
              style: GoogleFonts.getFont('Lato'),
            ),
          ],
        ),
        // Text(
        //     descripcion,
        //     textAlign: TextAlign.justify,
        //     maxLines: 3,
        //     style: const TextStyle(
        //       fontWeight: FontWeight.w100,
        //     ),
        //   ),
        // ),

        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text("Intereses"),
              Text("Logros"),
            ],
          ),
        ),
      ],
    );
  }

  /// Este Widget se encarga de crear la visualización del estilo "Followers" con un número [value]
  /// y una cadena asociada [text] que aparecerá debajo del número, más pequeño.
  Widget botonCabeceraNumeros(BuildContext context, int value, String text) => MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        child: Column(
          children: <Widget>[
            Text(
              value.toString(),
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
            ),
            const SizedBox(height: 2),
            Text(
              text,
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      );
}
