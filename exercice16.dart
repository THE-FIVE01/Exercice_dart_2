import 'dart:io';

void main() {
  int nbr, i, pg, posi_pg;
  print("==================== PLUS GRAND NOMBRE 2 ====================");

  i = 0;
  nbr = 1;
  pg = 0;
  while (nbr != 0) {
    print("Entrer un nombre : ");
    nbr = int.parse(stdin.readLineSync());
    i++;

    if (i == 1 || nbr > pg) {
      pg = nbr;
      posi_pg = i;
    }
  }
  print("Le nombre le plus grand est : $pg");
  print("Le nombre $pg a été saisi en position n° $posi_pg");
}
