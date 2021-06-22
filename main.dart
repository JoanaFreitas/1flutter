import 'package:flutter/material.dart';

main() {
  runApp(new PerguntasApp());
}

class PerguntasApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Text('Olá flutter'),
      ),
    );
  }
}
