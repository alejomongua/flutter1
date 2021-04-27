import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final style = TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contador de clicks'),
        centerTitle: true,
        elevation: 10,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Número de clicks:', style: style),
            Text('0', style: style)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Hola mundo');
          }),
    );
  }
}
