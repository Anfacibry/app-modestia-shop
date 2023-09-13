import 'package:app_fashion_shop/style/theme/cores.dart';
import 'package:flutter/material.dart';

class EstyloApp {
  ///Tamanho pego do app: largura e altura
  static ({double altura, double largura}) tamanhoTelaApp(
      BuildContext context) {
    double alturaPega = MediaQuery.of(context).size.height;
    double larguraPega = MediaQuery.of(context).size.width;
    return (altura: alturaPega, largura: larguraPega);
  }

  ///Estilos de textos que serão usados no app
  static TextStyle textoPrincipalh1({double tamanho = 20}) => TextStyle(
        color: CorApp.corTextoPrincipalh1,
        fontSize: tamanho,
        fontWeight: FontWeight.bold,
      );
  static TextStyle textoSecundarioh2({double tamanho = 20}) => TextStyle(
        color: CorApp.corTextoSecundarioh2,
        fontSize: tamanho,
        fontWeight: FontWeight.bold,
      );
  static TextStyle textoSecundarioh3({double tamanho = 20}) => TextStyle(
        color: CorApp.corTextoSecundarioh3,
        fontSize: tamanho,
        fontWeight: FontWeight.bold,
      );
  static TextStyle textoCaixaDeTexto({double tamanho = 20}) => TextStyle(
        color: CorApp.corTextoCaixaDeTexto,
        fontSize: tamanho,
        fontWeight: FontWeight.w400,
      );
  static TextStyle textoCorPrimaria({double tamanho = 20}) => TextStyle(
        color: CorApp.corOnPrimariaContainer,
        fontSize: tamanho,
        fontWeight: FontWeight.bold,
      );
}
