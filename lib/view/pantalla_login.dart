import 'package:flutter/material.dart';
import 'package:tfg_v1/view/theme/theme.dart';
import 'pantalla_registro.dart';

class PantallaLogin extends StatefulWidget {
  const PantallaLogin({Key? key}) : super(key: key);

  @override
  PantallaLoginState createState() => PantallaLoginState();
}

class PantallaLoginState extends State<PantallaLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Iniciar sesión"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.only(top: 60.0),
            ),
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Introduce tu correo @alumnos.unex.es'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Contraseña', hintText: 'Contraseña'),
              ),
            ),
            TextButton(
              onPressed: () {
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: const Text(
                'He olvidado mi contraseña',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text(
                  'Iniciar sesión',
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            const SizedBox(
              height: 130, // todo ajustar según resolución
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, "/auth/registro");
              },
              child: const Text(
                '¿Eres nuevx? Regístrate aquí',
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _mostrarAlerta(int codigo) async {
    String texto = '';

    switch (codigo) {
      case 0:
        texto = "El usuario no existe.\nPruebe registrarse";
        break;
      case 1: // este caso no debería ser llamado
        texto = "Inicio de sesión correcto :)";
        break;
      case 2:
        texto = "Las credenciales no son válidas";
        break;
      case 3:
        texto = "Por favor, rellene los campos";
        break;
      case 4:
        texto = "Error desconocido";
        break;
    }

    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Error al iniciar sesión'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(texto),
              ],
            ),
          ),
          actions: <Widget>[
            if (codigo == 0)
              ( // si el nombre de usuario no existe
                  TextButton(
                child: const Text('Registrarse'),
                onPressed: () {
                  Navigator.of(context).pop();
                  Navigator.pushNamed(context, "/auth/registro");
                },
              )),
            TextButton(
              child: const Text('Vale'),
              onPressed: () {
                setState(() {});
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
