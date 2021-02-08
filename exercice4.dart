import 'dart:io';

void main() {
  // Déclaration de variables
  int nbr;
  double prix;

  print("Entrer le nombre de photocopies que vous voulez éffectuées");
  nbr = int.parse(stdin.readLineSync());

  if (nbr > 0 && nbr <= 10) {
    prix = (nbr * 0.1);
  } else if (nbr <= 30) {
    prix = (10 * 0.1) + ((nbr - 10) * 0.09);
  } else {
    prix = (10 * 0.1) + (20 * 0.09) + ((nbr - 30) * 0.08);
  }
  print("Le prix total pour les copies est : $prix E");
}
