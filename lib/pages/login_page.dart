import 'package:flutter/material.dart';
import 'package:productos/widgets/card_container.dart';
import 'package:productos/widgets/fondo_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FondoLogin(
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 200),
            CardContainer(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Iniciar Sesión',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  _LoginForm(),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              'Crear nueva cuenta',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            )
          ]),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
          child: Column(
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purpleAccent),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.purple, width: 2),
                ),
                labelText: 'Correo Electrónico',
                hintText: 'name@example.com',
                labelStyle: TextStyle(
                  color: Colors.red,
                ),
                prefixIcon: Icon(
                  Icons.alternate_email_rounded,
                  color: Colors.pink,
                )),
          )
        ],
      )),
    );
  }
}
