/// Esta clase representa un grado o posgrado impartido en un Centro de una Universidad.
///
///
class Titulacion {
  String nombre;
  TipoGrado tipoDeGrado;
  String? asignaturasURL;
  int? nMatriculados;

  // todo revisar constructores con más parámetros
  Titulacion(this.nombre, this.tipoDeGrado);

  void cambiarTipoGrado(TipoGrado t) {
    tipoDeGrado = t;
  }

  void actualizarURL(String url) {
    asignaturasURL = url;
  }

  void borrarURL() {
    asignaturasURL = null;
  }

  void actualizarMatriculados(int n) {
    nMatriculados = n;
  }
}

/// Enumeración con los tipos de grado que puede haber.
/// Una titulación tendrá que tener sólo uno.
enum TipoGrado { grado, master, doctorado }
