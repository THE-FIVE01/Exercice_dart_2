import 'dart:io';

void main() {
  int J, m, A;
  bool C1, C2, C3, C4, B;

  print("Entrer le numero du jour");
  J = int.parse(stdin.readLineSync());
  print("Enter le numero du mois");
  m = int.parse(stdin.readLineSync());
  print("Entrer l'année");
  A = int.parse(stdin.readLineSync());

  B = (((A % 4) == 0) && !((A % 100) == 0) || ((A % 400) == 0));
  C1 = (m == 1 || m == 3 || m == 5 || m == 7 || m == 8 || m == 10 || m == 12) &&
      (J >= 1 && J <= 31);
  C2 = (m == 4 || m == 6 || m == 9 || m == 11) && ((J >= 1) && (J <= 30));
  C3 = (m == 2) && B && (J >= 1) && (J <= 29);
  C4 = (m == 2) && (J >= 1) && (J <= 28);

  if (C1 || C2 || C3 || C4) {
    print("Date valide");
  } else {
    print("Date invalide");
  }
}
