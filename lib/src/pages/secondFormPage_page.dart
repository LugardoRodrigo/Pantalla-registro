import 'package:flutter/material.dart';
import 'package:prueba/src/pages/formulario_page.dart';

class SecondFormPage extends StatelessWidget {
  const SecondFormPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Argumentos parametros = ModalRoute.of(context).settings.arguments;
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Pagina Formulario'),
        ),
        body: Center(
          child: Text('${parametros.nombre}'
              '${parametros.apellido}'
              '${parametros.edad}'),
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
