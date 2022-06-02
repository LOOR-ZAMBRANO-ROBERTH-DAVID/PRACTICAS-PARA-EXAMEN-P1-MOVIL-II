
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ListViewBasic extends StatelessWidget {
  const ListViewBasic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
        padding: EdgeInsets.all(30),
        children: [
          Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Icon(
              Icons.verified_user,
              size: 90,
            ),
          ),
          Center(
            child: Text(
              "Titulo",
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          Text(
            "La teoría de la relatividad incluye tanto a la teoría de la relatividad especial como la de la relatividad general, formuladas principalmente por Albert Einstein a principios del siglo XX, que pretendían resolver la incompatibilidad existente entre la mecánica newtoniana y el electromagnetismo.1​ La teoría de la relatividad especial, publicada en 1905, trata de la física del movimiento de los cuerpos en ausencia de fuerzas gravitatorias, en el que se hacían compatibles las ecuaciones de Maxwell del electromagnetismo con una reformulación de las leyes del movimiento. En la teoría de la relatividad especial, Einstein, Lorentz y Minkowski, entre otros, unificaron los conceptos de espacio y tiempo, en un ramado tetradimensional al que se le denominó espacio-tiempo. La relatividad especial fue una teoría revolucionaria para su época, con la que el tiempo absoluto de Newton quedó relegado y conceptos como la invariabilidad en la velocidad de la luz, la dilatación del tiempo, la contracción de la longitud y la equivalencia entre masa y energía fueron introducidos. Además, con las formulaciones de la relatividad especial, las leyes de la Física son invariantes en todos los sistemas de referencia inerciales; como consecuencia matemática, se encuentra como límite superior de velocidad a la de la luz y se elimina la causalidad determinista que tenía la física hasta entonces. Hay que indicar que las leyes del movimiento de Newton son un caso particular de esta teoría donde la masa, al viajar a velocidades muy pequeñas, no experimenta variación alguna en longitud ni se transforma en energía y al tiempo se le puede considerar absoluto. La teoría de la relatividad general, publicada en 1915, es una teoría de la gravedad que reemplaza a la gravedad newtoniana, aunque coincide numéricamente con ella para campos gravitatorios débiles y velocidades «pequeñas». La teoría general se reduce a la teoría especial en presencia de campos gravitatorios. La relatividad general estudia la interacción gravitatoria como una deformación en la geometría del espacio-tiempo. En esta teoría se introducen los conceptos de la curvatura del espacio-tiempo como la causa de la interacción gravitatoria, el principio de equivalencia que dice que para todos los observadores locales inerciales las leyes de la relatividad especial son invariantes y la introducción del movimiento de una partícula por líneas geodésicas. La relatividad general no es la única teoría que describe la atracción gravitatoria, pero es la que más datos relevantes comprobables ha encontrado. Anteriormente, a la interacción gravitatoria se la describía matemáticamente por medio de una distribución de masas, pero en esta teoría no solo la masa percibe esta interacción, sino también la energía, mediante la curvatura del espacio-tiempo y por eso se necesita otro lenguaje matemático para poder describirla, el cálculo tensorial. Muchos fenómenos, como la curvatura de la luz por acción de la gravedad y la desviación en la órbita de Mercurio, son perfectamente predichos por esta formulación. La relatividad general también abrió otro campo de investigación en la física, conocido como cosmología y es ampliamente utilizado en la astrofísica.2​ El 7 de marzo de 2010, la Academia Israelí de Ciencias exhibió públicamente los manuscritos originales de Einstein (redactados en 1905). El documento, que contiene 46 páginas de textos y fórmulas matemáticas escritas a mano, fue donado por Einstein a la Universidad Hebrea de Jerusalén en 1925 con motivo de su inauguración.",
            style: TextStyle(fontSize: 30),
          )
        ],
      );
  }
}