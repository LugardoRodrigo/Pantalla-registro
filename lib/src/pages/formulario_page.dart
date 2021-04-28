import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  //TextEditingController nombreTextController;
  //TextEditingController apTextController;
  //String usuario = 'Yessica';
  //String password = '123hola';

  FocusNode nombreFocus;
  FocusNode apellidoFocus;
  FocusNode edadFocus;

  String nombre;
  String apellido;
  String edad;

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Formulario'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Nombre',
                      hintText: 'Ejemplo:Karla',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    nombre = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'LLena el campo';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.nombreFocus,
                  onEditingComplete: () => requestFocus(context, apellidoFocus),
                  textInputAction: TextInputAction.next,
                  //autofocus: true
                  //controller: nombreTextController,
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Apellido',
                      hintText: 'Ejemplo:Perez',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    apellido = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'campo vacio';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.apellidoFocus,
                  onEditingComplete: () => requestFocus(context, edadFocus),
                  textInputAction: TextInputAction.next,
                  //autofocus: true
                  //controller: apTextController,
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Edad',
                      hintText: 'Ejemplo:23',
                      prefixIcon: Icon(Icons.person)),
                  onSaved: (value) {
                    edad = value;
                  },
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'campo vacio';
                    } else {
                      return null;
                    }
                  },
                  focusNode: this.edadFocus,
                  //autofocus: true
                  //controller: apTextController,
                ),
                SizedBox(
                  height: 5.0,
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    child: Text('Enviar'),
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();

                        if (nombre.compareTo('Rodrigo') == 0 &&
                            apellido.compareTo('Lugardo') == 0) {
                          Navigator.pushNamed(context, 'formulario dos',
                              arguments: Argumentos(
                                  nombre: this.nombre,
                                  apellido: this.apellido,
                                  edad: this.edad));
                        } else {
                          print('Datos incorrectos');
                        }
                      }
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }

  //METODO PARA EL FOCUS
  void requestFocus(BuildContext context, FocusNode focusNode) {
    FocusScope.of(context).requestFocus(focusNode);
  }

  /*String validarCampo(var value) {
    if (value.isEmpty) {
      return 'Llene ese campo';
    }
  }*/

//INSTANSIAR A FOCUS
  @override
  void initState() {
    super.initState();
    nombreFocus = FocusNode();
    apellidoFocus = FocusNode();
    edadFocus = FocusNode();
    //nombreTextController = TextEditingController();
    //apTextController = TextEditingController();
  }

//ELIMINAR LA INSTANCIA DE FOCUS
  @override
  void dispose() {
    super.dispose();
    nombreFocus.dispose();
    apellidoFocus.dispose();
    edadFocus.dispose();
    // nombreTextController.dispose();
    // apTextController.dispose();
  }
}

class Argumentos {
  String nombre;
  String apellido;
  String edad;

  Argumentos({this.nombre, this.apellido, this.edad});
}
