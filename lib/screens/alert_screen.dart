import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        //barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo cupertino'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('contenido de la alerta'),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar',
                      style: TextStyle(color: Colors.red))),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child:
                      const Text('OK', style: TextStyle(color: Colors.indigo)))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        //barrierDismissible: true, // permite cerrar el dialogo cuando se hace click en la sombra
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Text('Titulo'),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('contenido de la alerta'),
                FlutterLogo(size: 100)
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancelar'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              //puedo sobreescribir el tema del boton ya definido en app_theme
              // ignore: sort_child_properties_last
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  'Mostrar Alerta',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              //onPressed: () => displayDialogAndroid(context),
              onPressed: () => Platform
                      .isAndroid //para definir que alerta llamar si estoy en android o ios
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context); //devolverse al home
          }),
    );
  }
}
