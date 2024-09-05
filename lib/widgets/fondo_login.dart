import 'package:flutter/material.dart';

class FondoLogin extends StatelessWidget {
  final Widget child;

  const FondoLogin({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.amber,
      width: double.infinity,
      height: double.infinity,
      child: Stack(children: [
        _PurpleBox(),
        Container(
          margin: const EdgeInsets.all(20),
          width: double.infinity,
          child: const Icon(
            Icons.person_4, color: Colors.white, size: 100,
          ),
        ),
        this.child,
      ]),
    );
  }
}

class _PurpleBox extends StatelessWidget {
  // const _PurpleBox({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        width: double.infinity,
        height: size.height * 0.4,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [Colors.pink.shade200, Colors.red.shade900],
        )),
        child: Stack(
          children: [
            Positioned(
              top: 100,
              left: 20,
              child: _Esfera(),
            ),
            Positioned(
              top: 200,
              right: 30,
              child: _Esfera(),
            )
          ],
        ));
  }
}

class _Esfera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.indigo.shade100),
    );
  }
}
