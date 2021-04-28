import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  Contador({Key key}) : super(key: key);

  @override
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int _contador = 0;
  String _mensaje;
  TextStyle estilosTexto = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu Principal',
            onPressed: () => {},
          ),
          title: Text('Imagenes'),
          centerTitle: true,
          elevation: 5.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.add_alert),
                tooltip: 'Alertas',
                onPressed: () => {}),
            IconButton(
              icon: Icon(Icons.mail),
              tooltip: 'Correo',
              onPressed: () => {
                setState(() {
                  _mensaje = 'Correo Nuevo';
                })
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 150,
                child: Text('Mensaje: $_mensaje'),
              ),
              SizedBox(height: 50.0),
              Container(
                width: 150,
                child: Image.asset('assets/adventuretime-200x200.webp'),
              ),
              SizedBox(height: 50.0),
              Text(
                'Has presionado este numero de veces: ',
                style: estilosTexto,
              ),
              SizedBox(height: 20.0),
              Text('$_contador', style: estilosTexto),
            ],
          ),
        ),
        floatingActionButton: _mostrarBotones());
  }

  Widget _mostrarBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: _restaurarContador,
          child: Icon(
            Icons.exposure_zero,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          onPressed: _incrementarContador,
          child: Icon(
            Icons.plus_one,
          ),
        ),
        SizedBox(
          width: 10.0,
        ),
        FloatingActionButton(
          onPressed: _decrementarContador,
          child: Icon(
            Icons.remove,
          ),
        ),
      ],
    );
  }

  void _incrementarContador() {
    setState(() => _contador++);
  }

  void _decrementarContador() {
    setState(() {
      _contador--;
    });
  }

  void _restaurarContador() {
    setState(() {
      _contador = 0;
    });
  }
}
