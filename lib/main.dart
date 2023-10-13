import 'package:app_fashion_shop/store/store_login.dart';
import 'package:app_fashion_shop/style/theme/cores.dart';
import 'package:flutter/material.dart';

import 'pages/login/login.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppFashionShop());

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
      home: Provider(
        create: (cont) => StoreLogin(),
        child: const TelaInicial(),
      ),
    );
  }
}
