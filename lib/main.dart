import 'package:app_fashion_shop/pages/detalhe_produto.dart';
import 'package:app_fashion_shop/pages/home.dart';
import 'package:app_fashion_shop/pages/cadastro_de_login.dart';
import 'package:app_fashion_shop/pages/cadastro_redes_sociais.dart';
import 'package:app_fashion_shop/store/store_home.dart';
import 'package:app_fashion_shop/store/store_login.dart';
import 'package:app_fashion_shop/config/routes/rotas_nomeadas.dart';
import 'package:app_fashion_shop/config/theme/cores.dart';
import 'package:flutter/material.dart';

import 'pages/login.dart';
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
    StoreLogin login = Provider.of<StoreLogin>(context, listen: false);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: CorApp.corPrimaria,
        ),
        useMaterial3: true,
      ),
      initialRoute: login.loginEfetuado
          ? RotasNomeadas.rotaPrincipal
          : RotasNomeadas.rotaLogin,
      routes: {
        RotasNomeadas.rotaLogin: (ctx) => const Login(),
        RotasNomeadas.rotaPrincipal: (ctx) => const Home(),
        RotasNomeadas.rotaLoginCadastro: (ctx) => const CadastroDeLogin(),
        RotasNomeadas.rotaLoginCadastroRedes: (ctx) =>
            const CadastroRedesSociais(),
        RotasNomeadas.detalheProduto: (ctx) => const DetalheProduto(),
      },
    );
  }
}
