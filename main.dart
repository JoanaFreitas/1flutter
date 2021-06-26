import 'package:flutter/material.dart';
import './resultado.dart';

import './questionario.dart';

main() => runApp(PerguntasApp());

@override
class _PerguntasAppState extends State<PerguntasApp> {
  var _perguntaSelecionada = 0;
  final _perguntas = const [
    {
      'texto': 'Qual é a sua cor preferida?',
      'resposta': ['Preto', 'Vermelho', 'Verde', 'Branco'],
    },
    {
      'texto': 'Qual é o seu animal favorito?',
      'resposta': ['Coelho', 'Cobra', 'Elefante', 'Leao'],
    },
    {
      'texto': 'Qual é a sua estação favorita?',
      'resposta': ['Verao', 'outono', 'Inverno', 'Primavera'],
    }
  ];

  void _responder() {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
      });
    }
  }

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(Text),
      ),
    );
  }
}

class PerguntasApp extends StatefulWidget {
  _PerguntasAppState createState() {
    return _PerguntasAppState();
  }
}
//aula55
