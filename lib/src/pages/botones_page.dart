import 'package:flutter/material.dart';

class BotonesPage extends StatefulWidget {
  BotonesPage({Key key}) : super(key: key);

  @override
  _BotonesPageState createState() => _BotonesPageState();
}

class _BotonesPageState extends State<BotonesPage> {
  String _mensaje;
  TextStyle estilosTexto = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rodrigo')),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 50.5,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),

              // ignore: deprecated_member_use
              child: RaisedButton(
                color: Colors.blueAccent,
                textColor: Colors.white,
                child: Text('RaisenButton'),
                onPressed: () => {
                  setState(() {
                    _mensaje = 'RaisenButton';
                  })
                },
              ),
            ),
            SizedBox(
              height: 50.5,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),
              //ignore: deprecated_member_use
              child: FlatButton(
                child: Text('FlatButton'),
                onPressed: () => {
                  setState(() {
                    _mensaje = 'FlatButton';
                  })
                },
              ),
            ),
            SizedBox(
              height: 50.5,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),
              //ignore: deprecated_member_use
              child: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () => {
                  setState(() {
                    _mensaje = 'IconButton';
                  })
                },
                color: Colors.blue,
                iconSize: 45.0,
              ),
            ),
            SizedBox(
              height: 50.5,
            ),
            Container(
              width: 250.0,
              height: 100.0,
              /*decoration: BoxDecoration(
                border:
                    Border.all(color: Colors.blue, style: BorderStyle.solid),
              ),*/
              //ignore: deprecated_member_use
              child: OutlineButton(
                textColor: Colors.blueAccent,
                onPressed: () => {
                  setState(() {
                    _mensaje = 'OutLineButton';
                  })
                },
                color: Colors.blue,
                child: Text('OutLineButton'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25)),
                borderSide: BorderSide(color: Colors.blue),
              ),
            ),
            SizedBox(
              height: 50.5,
            ),
            Text(
              'Has presionado este boton: $_mensaje',
              style: estilosTexto,
            ),
          ],
        ),
      ),
    );
  }
}
