import 'canciones_model.dart';


final canciones = [
  Canciones(titulo: "Me fui de vacaciones", autor: "conejo malo"),
  Canciones(titulo: "Ya me entere", autor: "Maluma"),
  Canciones(titulo: "Safaera", autor: "Julio Jaramillo")
];

void imprimir(Canciones canciones) {
  print(canciones.titulo);
  print(canciones.autor);

}
