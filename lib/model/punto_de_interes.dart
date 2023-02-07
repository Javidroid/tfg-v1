/// Un Punto de Interés es un espacio en un Centro donde los estudiantes pueden quedar.
///
/// Este espacio es lo suficientemente característico como para que casi todos
/// los usuarios sepan dónde está.
/// _P. Ej.: La cafetería del centro, la biblioteca, la puerta principal..._
class PuntoInteres {
  String nombre;
  String desc;
  int aforo;

  PuntoInteres(this.nombre, this.desc, this.aforo);

  /// Establece el [nombre] del [PuntoInteres] a [newName].
  void cambiarNombre(String newName) {
    nombre = newName;
  }

  /// Establece la [desc] del [PuntoInteres] a [newDesc].
  void cambiarDescripcion(String newDesc) {
    desc = newDesc;
  }

  /// Establece el [aforo] del [PuntoInteres] a [newAforo].
  void cambiarAforo(int newAforo){
    aforo = newAforo;
  }
}
