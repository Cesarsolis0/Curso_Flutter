// Crear un programa en Dart que contenga una función que determine si un número dado es primo o no. Además en otra función verificar si el número es par o es impar. El usuario debe ingresar el número por consola.

import 'dart:io';

// Funcion que llama a las demas funciones
void main() {
  print("Ingrese un Numero Entero:");
  int numero = int.parse(stdin.readLineSync()!);

  if (esPrimo(numero)) {
    print("El numero ingresado es primo.");
  } else {
    print("El numero ingresado no es primo.");
  }

  if (esPar(numero)) {
    print("El numero ingresado es par.");
  } else {
    print("El numero ingresado es impar.");
  }
}

// función que determine si un número dado es primo o no

bool esPrimo(int numero) {
  // si se ingresa un numero menor o igual a 1,indicara que no es primo
  if (numero <= 1) {
    return false;
  }

  for (int i = 2; i <= (numero / 2); i++) {
    // si el numero es divisble por algun numeor entre 2 y la mitad del numero,entonces indicara que no es primo
    if (numero % i == 0) {
      return false;
    }
  }
  //si no se cumple lo anterioir entonces el numero es primo
  return true;
}

// función que verifica si el número es par o es impar.
bool esPar(int numero) {
  // si el resto de la dividion entre el numero y 2 es 0,entonces es un numero par
  if (numero % 2 == 0) {
    return true;
  }
  // si no es un numero impar
  return false;
}
