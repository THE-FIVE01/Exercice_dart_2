import 'dart:io';

void main() {
  int nbr_dep;

  print("Enrer un nombre de départ : ");
  nbr_dep = int.parse(stdin.readLineSync());
  print("Les 10 nombres suivants sont : ");
  for (int i = (nbr_dep + 1); i <= (nbr_dep + 10); i++) {
    print(i);
  }
}
