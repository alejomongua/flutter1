import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _style = TextStyle(fontSize: 25);

  int _conteo = 0;

  void reset() {
    _conteo = 0;
    setState(() {});
  }

  void sumar() {
    _conteo++;
    setState(() {});
  }

  void restar() {
    if (_conteo > 0) {
      _conteo--;
      setState(() {});
    }
  }

  Widget _crearBotones() {
    return Row(
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(onPressed: reset, child: Icon(Icons.restore)),
        Expanded(child: SizedBox()),
        FloatingActionButton(
            onPressed: sumar, child: Icon(Icons.arrow_upward_sharp)),
        SizedBox(width: 10.0),
        FloatingActionButton(
            onPressed: restar, child: Icon(Icons.arrow_downward_sharp))
      ],
      mainAxisAlignment: MainAxisAlignment.end,
    );
  }

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
        floatingActionButton: _crearBotones());
  }
}
