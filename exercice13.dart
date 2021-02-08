import 'dart:io';

void main() {
  int nbr, som;

  print("Entrer un nombre de départ : ");
  nbr = int.parse(stdin.readLineSync());

  som = 0;
  for (int i = 1; i < nbr; i++) {
    som = som + i;
  }
  print("La somme des entiers jusqu'à $nbr est : $som");
}
