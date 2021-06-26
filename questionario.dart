import 'dart:ffi';

import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final Function() quandoResponder;

  Questionario({
    required this.perguntas,
    required this.perguntaSelecionada,
    required this.quandoResponder,
  });

 bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }
  @override
  Widget build(BuildContext context) {
     List<String> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['resposta']
        : [];

    return Column(
      children: [
        Questao(perguntas[perguntaSelecionada]['texto']),
        ...respostas.map((t) => Resposta(t, quandoResponder)).toList(),
      ],
    );
  }
}
