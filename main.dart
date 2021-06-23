import 'package:flutter/material.dart';

main() => runApp(PerguntasApp());

@override
class PerguntasApp extends StatelessWidget {
  final List<String> perguntas = [
    'Qual é a sua cor preferida?',
    'Qual é o seu animal preferido?'
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(
              child: Text('Resposta1'),
              onPressed: null,
            ),
            ElevatedButton(
              child: Text('Resposta2'),
              onPressed: null,
            ),
             ElevatedButton(
              child: Text('Resposta3'),
              onPressed: null,
            ), 
          ],
        ),
      ),
    );
  }
} //aula 31
