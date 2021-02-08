import 'dart:io';

void main() {
  int n;

  print("Entrer un nombre compris entre 10 et 20");
  n = int.parse(stdin.readLineSync());

  while (!((n > 10) && (n < 20))) {
    if (n < 10) {
      print("PLus grand !");
    } else {
      print("PLus petit !");
    }

    print("Entrer un nombre compris entre 10 et 20");
    n = int.parse(stdin.readLineSync());
  }
}
