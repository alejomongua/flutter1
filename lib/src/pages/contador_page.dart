import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _style = TextStyle(fontSize: 25);

  int _conteo = 0;
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
            Text('Número de clicks:', style: _style),
            Text('$_conteo', style: _style)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print('Hola mundo');
            _conteo++;
            setState(() {});
          }),
      // floatingActionButtonLocation: FloatingActionButtonLocation.startDocked,
    );
  }
}
