import 'package:flutter/material.dart';

class boton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('¡Hola Mundo!');
          },
          child: Text('Presionar'),
        ),
      ),
    );
  }
}
