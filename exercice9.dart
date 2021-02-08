import 'dart:io';

void main() {
  int n;

  print("Entrer un nombre compris entre 1 et 3");
  n = int.parse(stdin.readLineSync());
  while ((n < 1) && (n > 3)) {
    print("Erreure de saisie ! Recommencez");
    print("Svp un nombre compris entre 1 et 3");
    n = int.parse(stdin.readLineSync());
    if ((n > 1) && (n < 3)) {
      print("Merci, bye");
      break;
    }

    print("Entrer un nombre compris entre 1 et 3");
    n = int.parse(stdin.readLineSync());
  }
}
