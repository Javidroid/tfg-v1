import 'Usuario.dart';

/// Una Actividad es creada por un Usuario para encontrar a otros Usuarios con
/// fines comunes. Como, por ejemplo, hacer un plan juntos.
///
/// Una Actividad se muestra a los Usuarios y estos pueden interaccionar con
/// ella para unirse al plan.
class Actividad {
  Usuario userCreador;
  String desc;
  String lugar;
  DateTime fecha;
  List<Usuario> usuariosApuntados = [];

  Actividad(this.userCreador, this.desc, this.lugar, this.fecha);

//Categoría -> debatir si hacer categorías predefinidas, o personalizables
}
