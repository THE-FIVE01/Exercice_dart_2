import 'dart:io';

void main() {
  // Déclaration de variables
  int h, m, s;

  print("Entrer l'heure");
  h = int.parse(stdin.readLineSync());

  print("Entrer les minutes");
  m = int.parse(stdin.readLineSync());

  print("Entrer les secondes");
  s = int.parse(stdin.readLineSync());

  s = (s + 1);
  if (s == 60) {
    s = 0;
    m = (m + 1);
  }
  if (m == 60) {
    m = 0;
    h = (h + 1);
  }
  if (h == 24) {
    h = 0;
  }

  print("Dans une seconde il sera  $h heure(s)  $m  minute(s) $s seconde(s)");
}
