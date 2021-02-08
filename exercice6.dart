import 'dart:io';

void main() {
  // Déclaration de variables
  List<double> score = [];
  double sc1, sc2, sc3, sc4;
  bool c1, c2, c3, c4;
  int i = 0;
  score.length = 4;

  while (i < score.length) {
    print("Entrer le scrore du candidat n° ${i + 1} ");
    score[i] = double.parse(stdin.readLineSync());
    i++;
  }

  sc1 = score[0];
  sc2 = score[1];
  sc3 = score[2];
  sc4 = score[3];

  // Autre méthode

  // print("Entrer le score du candidat n° 1");
  // sc1 = double.parse(stdin.readLineSync());
  // print("Entrer le score du candidat n° 2");
  // sc2 = double.parse(stdin.readLineSync());
  // print("Entrer le score du candidat n° 3");
  // sc3 = double.parse(stdin.readLineSync());
  // print("Entrer le score du candidat n° 4");
  // sc4 = double.parse(stdin.readLineSync());

  c1 = (sc1 > 50); //Elu au premier tour
  c2 = ((sc2 > 50) || (sc3 > 50) || (sc4 > 50)); // Batu, éliminé, sorti
  c3 = ((sc1 > sc2) && (sc1 > sc3) && (sc1 > sc4)); // Ballotage favorable
  c4 = (sc1 >= 12.5);

  if (c1) {
    print("Elu au premier tour");
  } else if (c2 || !c4) {
    print("Battu, éliminé, sorti !!!");
  } else if (c3) {
    print("Ballotage favorable");
  } else {
    print("Ballotage défavorable");
  }
}
