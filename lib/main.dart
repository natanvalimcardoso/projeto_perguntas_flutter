import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var perguntaSelecionada = 0;

  void responder() {
    // ignore: avoid_print
    setState(() {
      perguntaSelecionada++; //precisa de 2 coisas para mudar o estado e elas são: colocar Stateful e colocar dentro de um metodo setState.
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
                Text(perguntas[perguntaSelecionada]),
                // ignore: prefer_const_constructors
                ElevatedButton(
                  child: const Text('Resposta 1'),
                  onPressed: responder, //puxei a funça lá em cima sem
                ),
                // ignore: prefer_const_constructors
                ElevatedButton(
                  child: const Text('Resposta 2'),
                  onPressed: responder,
                ),
                // ignore: prefer_const_constructors
                ElevatedButton(
                  child: const Text(
                      'Resposta 3'), //Elevated Button para criar um botão
                  onPressed: responder,
                ),
              ],
            )));
  }
}
