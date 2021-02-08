import 'dart:io';

class Marqueur {
  // attributs ou propriétés

  String _marque;
  String _couleur;
  int _taille;

  // getters

  String get getMarque => _marque;
  String get getCouleur => _couleur;
  int get getTaille => _taille;

  void set setTaille(int taille) {
    if (this._marque == "Quart" && taille > 0) {
      this._taille = taille;
    } else {
      print("Désolé entrer une taille supérieure à 0");
    }
  }
  // constructeur création d'un objet

  Marqueur(String marque, String couleur, int taille) {
    this._marque = marque;
    this._couleur = couleur;
    this._taille = taille;
  }
  // methode
  void ecrireTexte() {
    print("${this._marque} écris du texte avec une ancre de couleur bleu");
  }

  void ecrireTexte2() {
    print("${this._marque} écris du texte avec une ancre de couleur noire");
  }
}

void main(List<String> args) {
  var marq = Marqueur("Quart", "bleu", 5);

  // afficher attribut
  print(marq.getMarque);
  print(marq.getCouleur);
  print(marq.getTaille);

  marq.ecrireTexte();
  marq.setTaille = 0;
}
