import 'package:flutter/material.dart';
import 'package:roll_rice_app/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String senha = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset('assets/images/logo.png'),
                ),
                Container(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'E-mail'),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  onChanged: (value) {
                    senha = value;
                  },
                  obscureText: true,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Senha'),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(
                  
                    onPressed: () {
                      if (email == 'teste@gmail.com' && senha == '123') {
                        print("Login Correcto!!");
                        Navigator.of(context).pushReplacementNamed('/home');
                      } else {
                        print("Login Incorrecto!");
                      }
                    },
                    child: const Text(
                      "Enviar",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
