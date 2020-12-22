import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estiloTexto = new TextStyle( fontSize: 25);
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Título'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Text('Número de clics: ', style: estiloTexto),
           Text('$contador', style: estiloTexto)
        ],)
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ) ,
        onPressed: () {
          contador++;
        },),
    );
  }
}