import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 25);
  int _contador = 0;
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
            Text('Número de clics: ', style: _estiloTexto),
            Text('$_contador', style: _estiloTexto)
          ],
        )),
        floatingActionButton: _crearBotones());
  }

  Widget _crearBotones() {
    return Row(
      children: <Widget>[
        SizedBox(width: 35.0),
        FloatingActionButton(
            onPressed: _inicializar, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton(onPressed: _eliminar, child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add)),
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

  void _agregar() {
    setState(() => _contador++);
  }

  void _eliminar() {
    setState(() => _contador--);
  }

  void _inicializar() {
    setState(() => _contador = 0);
  }
}
