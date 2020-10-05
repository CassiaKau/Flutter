import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Imagem(),
    ),
  );
}

class Imagem extends StatefulWidget  {
  final key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return createState().build(context);
  }

  @override
  State<StatefulWidget> createState() => _ImagemState();
}

class _ImagemState extends State<Imagem>{
  @override
  Widget build(BuildContext context) {
    var _counter = DateTime.now().millisecond;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Botão'),
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey[300],
      body: Center(
        child: Image(image:
        new NetworkImage('http://thispersondoesnotexist.com/image?$_counter')),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState((){ _counter = DateTime.now().millisecond;});
        },
        label: Text('Reload'),
        icon: Icon(Icons.refresh),
        backgroundColor: Colors.blueGrey[600],
      ),
    );
  }

}
