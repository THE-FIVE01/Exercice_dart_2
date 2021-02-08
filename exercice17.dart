import 'dart:io';

void main() {
  int montant_payer, som_due, mont_vers, reste, Nb10F, Nb5F;

  montant_payer = 1;
  som_due = 0;

  while (montant_payer != 0) {
    print("Entrer le montant à payer : ");
    montant_payer = int.parse(stdin.readLineSync());
    som_due = som_due + montant_payer;
  }

  print("Vous devez payer $montant_payer francs");
  print("Montant versé : ");
  mont_vers = int.parse(stdin.readLineSync());

  reste = (mont_vers - montant_payer);

  Nb10F = 0;
  while (reste >= 10) {
    Nb10F = (Nb10F + 1);
    reste = (reste - 10);
  }
  while (reste >= 5) {
    Nb5F = (Nb5F + 1);
    reste = (reste - 5);
  }

  print("Le rendue de la monnaie est : ");
  print("Nombres de pièces de 10 F : $Nb10F");
  print("Nombres de pièces de 5 F : $Nb5F");
  print("Nombres de pièces de 1 F : $reste");
}
