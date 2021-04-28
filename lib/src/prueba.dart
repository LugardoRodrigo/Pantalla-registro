import 'package:flutter/material.dart';
/*import 'package:prueba/src/pages/billetera_pages.dart';
import 'package:prueba/src/pages/fotos_page.dart';
import 'package:prueba/src/pages/home_page.dart';
import 'package:prueba/src/pages/lugares_page.dart';
import 'package:prueba/src/pages/mapa_page.dart';
import 'package:prueba/src/pages/podcast_page.dart';*/
import 'package:prueba/src/routes/routes.dart';
//import 'package:prueba/src/contador.dart';

class MyApp extends StatelessWidget {
  final nombres = [
    'Rodrigo',
    'Roberto',
    'Luis',
    'Orlando',
    'Ivan',
    'Ana',
    'Denisse',
    'Paulina',
    'Karla'
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lugardo Segundo Rodrigo',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: obtenerRutas(),

      /*Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'Mapa': (BuildContext contex) => MapaPage(),
    'Billetera': (BuildContext contex) => BilleteraPage(),
    'Fotos': (BuildContext contex) => FotosPage(),
    'Podcast': (BuildContext contex) => PodcastPage(),
    'Lugares': (BuildContext contex) => LugaresPage(),
  };
} */
      //home: HomePage(),
    );
  }
}

/*Scaffold(
            appBar: AppBar(
              title: Text('Yessica Perez Reyes'),
            ),
            body: ListView(children: _crearItems())));
  }

  List<Widget> _crearItems() {
    List<Widget> lista = new List<Widget>();

    for (var opt in nombres) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Este es un subtitulo'),
        leading: Icon(Icons.alarm, size: 35),
        trailing: Icon(
          Icons.keyboard_arrow_right,
          size: 35,
        ),
        onTap: () {},
      );
      lista.add(tempWidget);
      lista.add(Divider());
    }
    return lista;
  }
}*/

/*<Widget> [
            ListTile(
              title: Text('Item 1'),
            ),
            Divider(),
            ListTile(
              title: Text('Item 2'),
            ),
            Divider(),
            ListTile(
              title: Text('Item 3'),
            ),
          ], */

/*ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: nombres.length,
          itemBuilder: (BuildContext context, int i) {
            return Container(
                // height: 50,
                child: Text(nombres[i])
                //Image.network('https://picsum.photos/id/$i/300/200'),
                );
          },
        ), */

/*
class HomePage extends StatelessWidget {
  int contador = 0;
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
              icon: Icon(Icons.mail), tooltip: 'Correo', onPressed: () => {}),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
            Text('$contador', style: estilosTexto),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador++;
          print(contador);
        },
        child: Icon(
          Icons.plus_one,
        ),
      ),
    );
  }
}*/
