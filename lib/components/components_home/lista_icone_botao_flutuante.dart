import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../config/theme/cores.dart';

class ListaIconeBotaoFlutuante extends StatelessWidget {
  final BuildContext contextLogin;
  const ListaIconeBotaoFlutuante({required this.contextLogin, super.key});

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of(contextLogin, listen: false);
    return Observer(
      builder: (_) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconeDeMenuFlutuante(
            imagem: "assets/icons/home.png",
            cor: storeHome.home ? CorApp.corPrimaria : CorApp.corSuperficie,
            corImagem:
                storeHome.home ? CorApp.corSuperficie : CorApp.corPrimaria,
            radius: 25,
            fun: () {
              storeHome.selecionandoIcone(IconeSelecionado.home);
            },
          ),
          IconeDeMenuFlutuante(
            imagem: "assets/icons/vavorito.png",
            cor: storeHome.favorito ? CorApp.corPrimaria : CorApp.corSuperficie,
            corImagem:
                storeHome.favorito ? CorApp.corSuperficie : CorApp.corPrimaria,
            radius: 25,
            fun: () {
              storeHome.selecionandoIcone(IconeSelecionado.favorito);
            },
          ),
          IconeDeMenuFlutuante(
            imagem: "assets/icons/carrinho.png",
            cor: storeHome.carrinho ? CorApp.corPrimaria : CorApp.corSuperficie,
            corImagem:
                storeHome.carrinho ? CorApp.corSuperficie : CorApp.corPrimaria,
            radius: 25,
            fun: () {
              storeHome.selecionandoIcone(IconeSelecionado.carrinho);
            },
          ),
          IconeDeMenuFlutuante(
            imagem: "assets/icons/perfil.png",
            cor: storeHome.perfil ? CorApp.corPrimaria : CorApp.corSuperficie,
            corImagem:
                storeHome.perfil ? CorApp.corSuperficie : CorApp.corPrimaria,
            radius: 25,
            fun: () {
              storeHome.selecionandoIcone(IconeSelecionado.perfil);
            },
          ),
        ],
      ),
    );
  }
}

class IconeDeMenuFlutuante extends StatelessWidget {
  final void Function() fun;
  final String imagem;
  final Color corImagem;
  final Color cor;
  final double radius;
  const IconeDeMenuFlutuante({
    required this.corImagem,
    required this.imagem,
    required this.cor,
    required this.radius,
    required this.fun,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: cor,
      radius: radius,
      child: IconButton(
        onPressed: fun,
        icon: Image.asset(
          imagem,
          color: corImagem,
        ),
      ),
    );
  }
}
