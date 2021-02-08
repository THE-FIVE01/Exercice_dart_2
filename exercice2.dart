import 'dart:io';

void main() {
  // Déclaration de variables
  int h, m;

  print("Entrer l'heure");
  h = int.parse(stdin.readLineSync());

  print("Entrer les minutes");
  m = int.parse(stdin.readLineSync());

  m = (m + 1);
  if (m == 60) {
    m = 0;
    h = (h + 1);
  }
  if (h == 24) {
    h = 0;
  }

  print("Dans une minute il sera  $h heure(s)  $m  minute(s)");
}
