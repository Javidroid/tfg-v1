/// Un Punto de Interés es un espacio concurrido dentro de un Centro.
///
/// Este espacio es lo suficientemente característico como para que casi todos
/// los usuarios sepan dónde está.
/// _P. Ej.: La cafetería del centro, la biblioteca, la puerta principal..._
class PuntoInteres {
  String nombre;
  String desc;
  int aforo;

  PuntoInteres(this.nombre, this.desc, this.aforo);

  void cambiarNombre(String newName) {
    nombre = newName;
  }

  void cambiarDescripcion(String newDesc) {
    desc = newDesc;
  }
}
