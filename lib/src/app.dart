import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicación de Prueba',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Principal'),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_alert),
            tooltip: 'Alerta',
            onPressed: () {
              print('Botón de alerta presionado');
            },
          ),
          IconButton(
            icon: Icon(Icons.mark_as_unread),
            tooltip: 'Alerta',
            onPressed: () {
              print('Botón de alerta presionado');
            },
          ),
        ], //backgroundColor: Colors.amber,
      ),
      body: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.indigo)),
        child: Column(
          children: <Widget>[
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.account_circle, size: 60, color: Colors.green),
                  Expanded(
                    //expandir el espacio del container
                    child: Icon(Icons.airplay, size: 60, color: Colors.green),
                  ),
                  Icon(Icons.computer, size: 60, color: Colors.green),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo)),
                      width: 250,
                      child: Center(
                        child: Image.network(
                          'https://construindodecor.com.br/wp-content/uploads/2019/06/flores-do-campo-artificiais-1.jpg',
                          width: 250,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo)),
                      width: 300.0,
                      child: Center(
                        child: Text('Rodrigo Lugardo Segundo'),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.indigo)),
                      width: 300.0,
                      child: Center(
                        child: Text('Desarrollo Movil'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      //backgroundColor: Colors.greenAccent,
      //floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Botón presionado');
        },
      ),
    );
  }
}
