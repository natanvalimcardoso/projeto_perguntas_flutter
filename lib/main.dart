import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './questao.dart';

main() {
  runApp(PerguntaApp());
}

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    // ignore: avoid_print
    setState(() {
      _perguntaSelecionada++; //precisa de 2 coisas para mudar o estado e elas são: colocar Stateful e colocar dentro de um metodo setState.
    });

    print('Pegunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorita?',
    ];

    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title:
                    const Text('Perguntas')), //titulo e usou AppBar para o topo
            body: Column(
              //serve para criar uma COluna
              children: <Widget>[
                Questao(perguntas[_perguntaSelecionada]), // questão 
                ElevatedButton(
                  child: const Text('Resposta 1'),
                  onPressed: _responder, //puxei a funça lá em cima sem
                ),
                // ignore: prefer_const_constructors
                ElevatedButton(
                  child: const Text('Resposta 2'),
                  onPressed: _responder,
                ),
                // ignore: prefer_const_constructors
                ElevatedButton(
                  child: const Text(
                      'Resposta 3'), //Elevated Button para criar um botão
                  onPressed: _responder,
                ),
              ],
            )));
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}
