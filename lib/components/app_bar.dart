import 'package:flutter/material.dart';

import '../config/style/estilo_do_app.dart';

AppBar appBar(double largura) {
  return AppBar(
    leading: Builder(
      builder: (context) => InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Image.asset(
          EstyloApp.iconeDrawer,
        ),
      ),
    ),
    centerTitle: true,
    title: Text(
      "Nome do Usuário",
      style: EstyloApp.textoPrincipalh1(),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: largura * .05),
        child: Image.asset(
          EstyloApp.imagemPerfil,
          height: 45,
        ),
      ),
    ],
  );
}
