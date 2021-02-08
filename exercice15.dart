import 'dart:io';

void main() {
  int nbr, pg, posi_pg;
  print("==================== PLUS GRAND NOMBRE ====================");

  pg = 0;
  for (int i = 1; i <= 3; i++) {
    print("Entrer le nombre n° $i");
    nbr = int.parse(stdin.readLineSync());

    if (i == 1 || nbr > pg) {
      pg = nbr;
      posi_pg = i;
    }
  }
  print("Le nombre le plus grand est : $pg");
  print("Le nombre $pg a été saisi en position n° $posi_pg");
}
