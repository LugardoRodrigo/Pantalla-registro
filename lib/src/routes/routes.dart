import 'package:flutter/material.dart';
import 'package:prueba/src/pages/api_pages_tarea.dart';
import 'package:prueba/src/pages/billetera_pages.dart';
//import 'package:prueba/src/pages/formulario_page.dart';
//import 'package:prueba/src/pages/botones_page.dart';
import 'package:prueba/src/pages/fotos_page.dart';
//import 'package:prueba/src/pages/home_page.dart';
import 'package:prueba/src/pages/lugares_page.dart';
import 'package:prueba/src/pages/mapa_page.dart';
import 'package:prueba/src/pages/podcast_page.dart';
import 'package:prueba/src/pages/secondFormPage_page.dart';

Map<String, WidgetBuilder> obtenerRutas() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => ApiPage(),
    'Mapa': (BuildContext contex) => MapaPage(),
    'Billetera': (BuildContext contex) => BilleteraPage(),
    'Fotos': (BuildContext contex) => FotosPage(),
    'Podcast': (BuildContext contex) => PodcastPage(),
    'Lugares': (BuildContext contex) => LugaresPage(),
    'formulario dos': (BuildContext contex) => SecondFormPage(),
  };
}
