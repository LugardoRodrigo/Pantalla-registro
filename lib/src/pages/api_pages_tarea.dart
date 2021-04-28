import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:prueba/models/gif_model_tarea.dart';
import 'package:http/http.dart' as http;

class ApiPage extends StatefulWidget {
  const ApiPage({Key key}) : super(key: key);

  @override
  _ApiPageState createState() => _ApiPageState();
}

class _ApiPageState extends State<ApiPage> {
  Future<List<Gif>> _listaGif;

  Future<List<Gif>> _obtenerGifs() async {
    List<Gif> gifs = [];
    final response = await http.get(Uri.parse('https://randomuser.me/api/'));

    if (response.statusCode == 200) {
      String body = utf8.decode(response.bodyBytes);

      final jsonData = jsonDecode(body);

      for (var item in jsonData['results']) {
        gifs.add(Gif(
            genero: item['gender'],
            name: item['name']['last'],
            url: item['picture']['large'],
            ubicacion: item['location']['city']));
      }

      //print(jsonData['data'][0]['title']);
    } else {
      throw Exception('Falto la llamada de API');
    }

    return gifs;
  }

  @override
  void initState() {
    super.initState();

    _listaGif = _obtenerGifs();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('LLamada de API- Rodrigo Lugardo Segundo'),
        ),
        body: Center(
            child: FutureBuilder(
          future: _listaGif,
          initialData: List<Gif>.empty(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridView.count(
                crossAxisCount: 1,
                children: _listadoGif(snapshot.data),
              );
              //,print(snapshot.data);
              //return Text('Datos recibidos');
            } else if (snapshot.error) {
              return Text('Error al conectar a la API');
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        )),
      ),
    );
  }

  List<Widget> _listadoGif(List<Gif> data) {
    List<Widget> gifList = [];

    for (var gif in data) {
      gifList.add(
        Container(
          child: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(26.0),
                    child: Image.network(
                      gif.url,
                      fit: BoxFit.fill,
                      height: 230.0,
                      width: 100.0,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Nombre: " + gif.name,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Genero: " + gif.genero,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Ubicacion: " + gif.ubicacion,
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    }
    return gifList;
  }
}
