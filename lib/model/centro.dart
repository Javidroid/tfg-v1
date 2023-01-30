import 'package:tfg_v1/model/punto_de_interes.dart';
import 'package:tfg_v1/model/titulacion.dart';

/// Esta clase representa un centro perteneciente a una Universidad.
///
/// Un centro es una Facultad o una Escuela.
/// Tiene un nombre [nombre] oficial _(P. Ej.: "Escuela Politécnica")_,
/// una breve descripcion [desc] y una dirección postal [direccion].
/// Además, tendrá un conjunto [listaPuntosInteres] de [PuntoInteres]
/// que recoge todos los espacios interesantes del centro donde los estudiantes
/// se puedan reunir.
/// Una lista [listaTitulaciones] de Titulaciones [Titulacion] almacena todos
/// aquellos grados y posgrados impartidos en este centro.
///
/// Para crear un centro con listas vacías a partir de un [nombre], [desc] y
/// [direccion] dados, se puede llamar al constructor [Centro.new].
/// Para crear un centro con las listas predefinidas, hay que llamar al
/// constructor [Centro.predefindo]
class Centro {
  /// El nombre del centro.
  /// _P. Ej.: "Facultad de Derecho"_
  String nombre;

  /// Una breve descripción del centro en cuestión.
  /// _P. Ej.: "La Escuela Politécnica de Cáceres es [...]
  /// fue fundada en el año 1982. El centro oferta [...]."_
  String desc = "";

  /// La dirección postal del centro
  /// _P. Ej.: "Av. de la Universidad, S/N, 10003 Cáceres"_
  String direccion;

  /// Una lista de puntos de intereses [PuntoInteres] que los
  /// estudiantes pueden encontrar fácilmente en el centro como punto de encuentro.
  /// _P. Ej.: [Cafetería, Biblioteca, PuertaPrincipal, ...]_
  List<PuntoInteres> listaPuntosInteres = [];

  /// Una lista de las titulaciones [Titulacion] impartidas en el centro.
  /// _P. Ej.: [Edificación, Civil, Software, Computadores, Telecomunicaciones]_
  List<Titulacion> listaTitulaciones = [];

  /// Constructor predeterminado.
  ///
  /// [nombre] es el nombre del centro, [desc] es una breve descripción y
  /// [direccion] es la dirección postal del centro.
  /// Por defecto, [listaPuntosInteres] y [listaTitulaciones] se inicializan como listas vacías.
  Centro(this.nombre, this.desc, this.direccion);

  /// Constructor predefinido.
  ///
  /// Sirve para inicializar una centro directamente con todos los campos.
  Centro.predefinido(this.nombre, this.desc, this.direccion, this.listaPuntosInteres, this.listaTitulaciones);

  void anadirPuntoInteres(PuntoInteres pi) {
    // TODO: implement anadirPuntoInteres
  }

  void borrarPuntoInteresByObject(PuntoInteres pi) {
    // TODO: implement borrarPuntoInteresByObject
  }

  void borrarPuntoInteresByName(String nombre) {
    // TODO: implement borrarPuntoInteresByName
  }

  void anadirTitulacion(Titulacion t) {
    // TODO: implement anadirTitulacion
  }

  void borrarTitulacionByObject(Titulacion t) {
    // TODO: implement borrarTitulacionByObject
  }

  void borrarTitulacionByName(String nombre) {
    // TODO: implement borrarTitulacionByName
  }
}
