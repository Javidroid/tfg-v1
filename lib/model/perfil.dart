import 'Titulacion.dart';

/// Esta clase se encarga de almacenar lo relacionado con la información adicional que el [Usuario] incluye en el perfil
///
/// Estos datos son de poca relevancia a nivel de sistema. Sin embargo, son vitales para el funcionamiento humano
/// de la aplicación. Pues, estos datos son los que harán un perfil de usuario más o menos cercano.
class Perfil {
  String nombre = "Dummie"; // todo cambiar inicialización
  String apellidos = "Expósito";
  String desc = "Unx chicx normal";
  Titulacion titulacion = Titulacion("Grado en Comedia", TipoGrado.grado);
  int edad = 99;
  String foto = 'assets/no_user_pic.png'; //enlace al asset
  int nAmigos = 32;
  int nActividades = 23;
}
