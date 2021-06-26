import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final texto;
  Resultado(this.texto);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Parabéns',
        style: TextStyle(fontSize: 28),
      ),
    );
  }
}
