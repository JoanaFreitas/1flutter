import 'package:flutter/material.dart';
import './questao.dart';
main() => runApp(PerguntasApp());

@override
class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  final perguntas = [
    'Qual é a sua cor preferida?',
    'Qual é o seu animal preferido?'
  ];

  void _Responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            ElevatedButton(
              child: Text('Resposta1'),
              onPressed: _Responder,
            ),
            ElevatedButton(
              child: Text('Resposta2'),
              onPressed: _Responder,
            ),
            ElevatedButton(
              child: Text('Resposta3'),
              onPressed: _Responder,
            ),
          ],
        ),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
