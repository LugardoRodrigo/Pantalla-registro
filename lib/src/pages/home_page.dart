import 'package:flutter/material.dart';
//import 'package:prueba/src/pages/mapa_page.dart';
import 'package:prueba/src/providers/menu_provider.dart';
import 'package:prueba/src/util/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Prueba ListView'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //print(menuProvider.opciones);
    /*menuProvider.cargarDatos().then((opciones) {
      print('Lista del future');
      print(opciones);
    });*/

    return FutureBuilder(
      future: menuProvider.cargarDatos(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapShot) {
        // print('Builder');
        // print(snapShot.data[4]);

        return ListView(children: _listaItems(context, snapShot.data));
      },
    );
  }

  List<Widget> _listaItems(BuildContext context, List<dynamic> data) {
    final List<Widget> opciones = [];

    data.forEach((opts) {
      final widgetTemp = ListTile(
          leading: obtenerIcon(opts['icono']),
          title: Text(opts['texto']),
          trailing: Icon(Icons.keyboard_arrow_right, size: 35),
          onTap: () {
            Navigator.pushNamed(context, opts['ruta'], arguments: opts['ruta']);

            /* final route = MaterialPageRoute(builder: (context) {
              return MapaPage();
            });
            Navigator.push(context, route);*/
          });
      opciones.add(widgetTemp);
      opciones.add(Divider());
    });

    return opciones;

    /*return [
      ListTile(
        leading: Icon(Icons.map, size: 35),
        title: Text(
          'Lugares favoritos',
          style: TextStyle(fontSize: 20),
        ),
        trailing: Icon(Icons.keyboard_arrow_right, size: 35),
        onTap: () {},
      ),
      Divider(),
      ListTile(
          leading: Icon(Icons.account_balance_wallet, size: 35),
          title: Text(
            'Billetera',
            style: TextStyle(fontSize: 20),
          ),
          trailing: Icon(Icons.keyboard_arrow_right, size: 35),
          onTap: () {}),
      Divider(),
      ListTile(
          leading: Icon(Icons.photo_album, size: 35),
          title: Text(
            'Fotos',
            style: TextStyle(fontSize: 20),
          ),
          trailing: Icon(Icons.keyboard_arrow_right, size: 35),
          onTap: () {}),
      Divider(),
      ListTile(
          leading: Icon(Icons.audiotrack, size: 35),
          title: Text(
            'Podcast',
            style: TextStyle(fontSize: 20),
          ),
          trailing: Icon(Icons.keyboard_arrow_right, size: 35),
          onTap: () {}),
      Divider(),
      ListTile(
          leading: Icon(Icons.add_location, size: 35),
          title: Text(
            'Lugares por visitar',
            style: TextStyle(fontSize: 20),
          ),
          trailing: Icon(Icons.keyboard_arrow_right, size: 35),
          onTap: () {}),
    ];*/
  }
}
