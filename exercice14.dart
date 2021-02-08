import 'dart:io';

void main() {
  int nbr, fact;

  print("====================Calcul de factorielle====================");
  print("==================== Entrer un nombre :");
  nbr = int.parse(stdin.readLineSync());

  fact = 1;

  for (int i = 2; i <= nbr; i++) {
    fact = (fact * i);
  }
  print("La factorielle de $nbr est : $fact");
}
