import 'dart:io';

void main() {
  int age, permis, nbr_acc, assurance;
  String tarifs, new_tarif;
  bool c1, c2, c3;

  print("Entrer votre age");
  age = int.parse(stdin.readLineSync());
  print("Entrer le nombre d'année du permis");
  permis = int.parse(stdin.readLineSync());
  print("Entrer le nombre d'accidents");
  nbr_acc = int.parse(stdin.readLineSync());
  print("Entrer le nombre d'année d'assurance");
  assurance = int.parse(stdin.readLineSync());

  c1 = age >= 25;
  c2 = permis >= 2;
  c3 = assurance > 1;

  if (!c1 && !c2) {
    if (nbr_acc == 0) {
      tarifs = "rouge";
    } else {
      tarifs = "Réfusé";
    }
  } else if ((!c1 && c2) || (c1 && !c2)) {
    if (nbr_acc == 0) {
      tarifs = "Orange";
    } else if (nbr_acc == 1) {
      tarifs = "Rouge";
    } else {
      tarifs = "Réfusé";
    }
  } else {
    if (nbr_acc == 0) {
      tarifs = "Vert";
    } else if (nbr_acc == 1) {
      tarifs = "Orange";
    } else if (nbr_acc == 2) {
      tarifs = "Rouge";
    } else {
      tarifs = "Rouge";
    }
  }
  print("Votre tarif est : $tarifs");
  if (c3) {
    if (tarifs == "Rouge") {
      new_tarif = "Orange";
    } else if (tarifs == "Orange") {
      new_tarif = "Vert";
    } else if (tarifs == "Vert") {
      new_tarif = "Bleu";
    } else {
      new_tarif = "Rouge";
    }
    print("");
    print("Vous avez fait plus d'un ans dans notre assurance pour cela : ");
    print("Votre tarif devient : $new_tarif");
  } else {
    print("");
    print("Vous n'avez pas plus d'un ans dans notre assurance pour cela : ");
    print("Votre tarif reste : $tarifs");
  }
}
