import 'dart:io';

void main() {
  // Déclaration de variables
  int age;
  String sexe;
  bool b1, b2;

  while (sexe != "m" || sexe != "f") {
    print("Entrer votre sexe Masculin (m) ou Féminin (f)");
    sexe = stdin.readLineSync();

    if (sexe == 'm' || sexe == 'f') {
      print("Entre vôtre age svp");
      age = int.parse(stdin.readLineSync());

      b1 = ((age > 20) && (sexe == "m"));
      b2 = ((age >= 18 && age <= 35) && (sexe == "f"));

      if (b1) {
        print("Vous payé l'impôt Monsieur");
        break;
      } else if (b2) {
        print("Vous payé l'impôt Madame");
        break;
      } else {
        print("Vous nêtes pas concerné par le paiement des impôt. Merci !");
        break;
      }
    }
  }
}
