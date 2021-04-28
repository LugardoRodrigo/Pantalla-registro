import 'package:flutter/material.dart';

class BilleteraPage extends StatelessWidget {
  const BilleteraPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textoRuta = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pagina Billetera'),
        ),
        body: Center(
          child: Text('Esta es la página de $textoRuta'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.keyboard_arrow_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
