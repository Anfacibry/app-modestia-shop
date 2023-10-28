import 'package:app_fashion_shop/store/store_home.dart';
import 'package:app_fashion_shop/store/store_login.dart';
import 'package:app_fashion_shop/style/theme/cores.dart';
import 'package:flutter/material.dart';

import 'pages/login/login.dart';
import 'package:provider/provider.dart';

import 'store/data/store_dados.dart';

void main() => runApp(MultiProvider(
      providers: [
        Provider<StoreLogin>(create: (cont) => StoreLogin()),
        Provider<Dados>(create: (cont) => Dados()),
        Provider<StoreHome>(create: (cont) => StoreHome())
      ],
      child: const AppFashionShop(),
    ));

class AppFashionShop extends StatelessWidget {
  const AppFashionShop({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: CorApp.corPrimaria,
        ),
        useMaterial3: true,
      ),
      home: const TelaInicial(),
    );
  }
}
