import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String texto;

  Resposta(this.texto, void Function() responder);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              textStyle: TextStyle(color: Colors.amberAccent)),
          onPressed: () {},
          child: Text(texto)),
    );
  }
}
