import 'package:flutter/material.dart';

import '../../config/style/app_style.dart';

AppBar appBarHome(double largura) {
  return AppBar(
    leading: Builder(
      builder: (context) => InkWell(
        onTap: () {
          Scaffold.of(context).openDrawer();
        },
        child: Image.asset(
          AppStyle.iconDrawer,
        ),
      ),
    ),
    centerTitle: true,
    title: Text(
      "Nome do Usuário",
      style: AppStyle.textFormFild(),
    ),
  );
}
