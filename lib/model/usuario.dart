import 'package:tfg_v1/model/perfil.dart';

/// Esta clase es la que contiene toda la información relativa a un Usuario, que
/// representará a cada persona que quiera registrarse en la aplicación.
/// Existe un campo [perfil] que se encarga de almacenar toda la información del usuario que no es relevante
/// para el funcionamiento interno de la app.
class Usuario {
  final int id;
  final String correo;
  String username;
  Perfil perfil = Perfil();
  RolUsuario tipo = RolUsuario.alumno;
  bool verificado = false;

  Usuario(this.id, this.correo, this.username);

/*
   * Métodos futuros a implementar:
   *    Eliminar usuario
   *    Cambiar el nombre de usuario comprobando que el nuevo no existe
   *    Devolver el perfil para editarlo o editar el perfil
   *    Verificar el usuario cuando se haya recibido el código
   *    Cambiar el Rol de usuario
   *
   */
}

enum RolUsuario {
  alumno,
  moderador,
  // Profesor? Adminstrador?
}
