import 'package:flutter/material.dart';
import 'package:tfg_v1/view/pantalla_principal.dart';
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PantallaPrincipal())
                  );
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
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PantallaRegistro())
                );
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
}
