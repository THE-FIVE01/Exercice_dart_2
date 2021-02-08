import 'dart:io';

void main(List<String> args) {
  int nbr;

  print("Entre un nombre pour afficher sa table de multiplication : ");
  nbr = int.parse(stdin.readLineSync());
  print("La table de multiplication de $nbr est : ");

  for (int i = 1; i <= 10; i++) {
    print("$nbr x $i = ${nbr * i}");
  }
}
