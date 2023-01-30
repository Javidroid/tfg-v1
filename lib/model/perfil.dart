import 'Titulacion.dart';

/// Esta clase se encarga de almacenar lo relacionado con la información adicional que el [Usuario] incluye en el perfil
///
/// Estos datos son de poca relevancia a nivel de sistema. Sin embargo, son vitales para el funcionamiento humano
/// de la aplicación. Pues, estos datos son los que harán un perfil de usuario más o menos cercano.
class Perfil {
  String? nombre;
  String? apellidos;
  String? desc;
  Titulacion? titulo;
  int? edad;
  String? foto; //enlace al asset
}
