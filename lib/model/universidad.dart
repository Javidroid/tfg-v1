import 'centro.dart';

/// Esta clase sirve para representar todos los elementos que compone una
/// Universidad.
///
/// En un principio, se espera que de esta clase sólo exista una instancia
/// que representa a la Universidad de Extremadura (para la institución que
/// fue creada inicialmente). Sin embargo, por extensibilidad, se deja abierto
/// por si en un futuro más Universidades quieren participar en el proyecto.
///
/// Para crear una Universidad vacía sólo con [nombre] y [abrev], llamar a [Universidad.new].
/// Si se quiere crear una Universidad con campos predefinidos, llamar a [Universidad.predefinida].
class Universidad {
  /// El nombre completo de la Universidad.
  /// _P. ej.: "Universidad de Extremadura"._
  String nombre;

  /// La abreviación por la que se conoce a la Universidad.
  /// _P. ej.: "UEx"._
  String abrev;

  /// Lista de cadenas con las posibles extensiones permitidas de Correo Electrónico Institucional.
  /// Puede haber más de una.
  /// **Formato: "@extension.dominio".**
  /// _P. ej.: "@alumnos.unex.es" ó "@unex.es"._
  List<String> extensionMail = [];

  /// Lista de centros pertenecientes a la Universidad.
  List<Centro> listaCentros = [];

  /// Constructor predeterminado.
  ///
  /// [nombre] es el nombre de la Universidad y [abrev] la abreviación oficial.
  /// Por defecto, [extensionMail] y [listaCentros] se inicializan como listas vacías.
  Universidad(this.nombre, this.abrev);

  /// Constructor predefinido.
  ///
  /// Sirve para inicializar una Universidad directamente con una lista de [extensionMail]
  /// y de [listaCentros].
  Universidad.predefinida(this.nombre, this.abrev, this.extensionMail, this.listaCentros);

  /// Añade una extensión de correo institucional a [extensionMail].
  void anadirExtension(String ext) {
    extensionMail.add(ext);
  }

  /// Borra de [extensionMail] la extensión de correo institucional pasada por parámetro.
  /// Returns true si se ha borrado con éxito (si la extensión estaba en la lista).
  bool borrarExtensionByName(String ext) {
    return extensionMail.remove(ext);
  }

  /// Vacía completamente [extensionMail].
  void borrarTodasExtensiones() {
    extensionMail.clear();
  }

  /// Añade un [Centro] a [listaCentros]
  void anadirCentro(Centro cen) {
    listaCentros.add(cen);
  }

  /// Borra de [listaCentros] el [Centro] pasado por parámetro.
  /// Returns true si se ha borrado con éxito (si el Centro estaba en la lista).
  bool borrarCentroByObject(Centro cen) {
    return listaCentros.remove(cen);
  }

  /// Borra de [listaCentros] el [Centro] cuyo nombre [Centro.nombre] coincida con
  /// la cadena pasada por parámetro.
  /// Returns true si el [Centro] se ha borrado de la lista.
  bool borrarCentroByName(String name) {
    for (var centro in listaCentros) {
      if (centro.nombre == name) {
        return listaCentros.remove(centro);
      }
    }
    return false;
  }

  /// Imprime un formato de cadena de la propia clase [Universidad].
  /// **Formato devuelto:** Nombre Universidad (Abreviación).
  /// _Por ejemplo: Universidad de Granada (UGR)._
  @override
  String toString() {
    return "$nombre ($abrev)";
  }
}
