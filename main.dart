import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';
main() => runApp(PerguntasApp());

@override
class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  final perguntas = [
    'Qual é a sua cor preferida?',
    'Qual é o seu animal preferido?'
  ];

  void _responder() {
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
            Resposta('Resposta1',_responder),
            Resposta('Resposta2',_responder),
            Resposta('Resposta3',_responder),
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
//aula45