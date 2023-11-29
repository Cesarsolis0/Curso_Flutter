import 'package:flutter/material.dart';

class nuevoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nuevoWidget'),
      ),
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
