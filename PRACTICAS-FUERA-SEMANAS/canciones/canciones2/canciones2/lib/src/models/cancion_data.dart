import 'cancion_model.dart';

final canciones = [
  Cancion(titulo: "Ella y yo", autor: "Don Omar"),
  Cancion(titulo: "tusa", autor: "no se quien la canta xd"),
  Cancion(titulo: "hbsdfjasb", autor: "jasdfnkasn")
];

void imprimir(Cancion cancion) {
  print(cancion.autor +" "+ cancion.titulo);
}
