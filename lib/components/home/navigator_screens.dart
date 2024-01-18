import 'package:app_fashion_shop/config/routes/named_routes.dart';
import 'package:app_fashion_shop/store/config_data.dart';

import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../config/theme/app_color.dart';

class NavigatorScreens extends StatelessWidget {
  final double height;
  const NavigatorScreens({required this.height, super.key});

  @override
  Widget build(BuildContext context) {
    final ConfigData dataProduct =
        Provider.of<ConfigData>(context, listen: false);
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
    return Observer(
      builder: (ctx) => NavigationBar(
        elevation: 2,
        height: height * .07,
        onDestinationSelected: (index) {
          debugPrint("Indice: ${index.toString()}");
        },
        destinations: [
          IconMenuFloating(
            imagem: "assets/icons/home.png",
            cor: storeHome.indexIconNavigator == 0
                ? AppColor.primaryColor
                : Theme.of(context).colorScheme.onInverseSurface,
            corImagem: storeHome.indexIconNavigator == 0
                ? Theme.of(context).colorScheme.onInverseSurface
                : AppColor.primaryColor,
            radius: 20,
            isBadge: false,
            fun: () {
              storeHome.getIndexIconNavigator(0);

              Navigator.pushNamed(context, NamedRoutes.routeHome);
            },
          ),
          IconMenuFloating(
            imagem: "assets/icons/favorito.png",
            cor: storeHome.indexIconNavigator == 1
                ? AppColor.primaryColor
                : Theme.of(context).colorScheme.onInverseSurface,
            corImagem: storeHome.indexIconNavigator == 1
                ? Theme.of(context).colorScheme.onInverseSurface
                : AppColor.primaryColor,
            radius: 20,
            isBadge: false,
            fun: () {
              storeHome.getIndexIconNavigator(1);

              Navigator.pushNamed(context, NamedRoutes.routeFavorite);
            },
          ),
          IconMenuFloating(
            imagem: "assets/icons/carrinho.png",
            cor: storeHome.indexIconNavigator == 2
                ? AppColor.primaryColor
                : Theme.of(context).colorScheme.onInverseSurface,
            corImagem: storeHome.indexIconNavigator == 2
                ? Theme.of(context).colorScheme.onInverseSurface
                : AppColor.primaryColor,
            radius: 20,
            isBadge: dataProduct.isEmptyCart,
            fun: () {
              storeHome.getIndexIconNavigator(2);

              Navigator.pushNamed(context, NamedRoutes.routeCarProduct);
            },
          ),
          IconMenuFloating(
            imagem: "assets/icons/perfil.png",
            cor: storeHome.indexIconNavigator == 3
                ? AppColor.primaryColor
                : Theme.of(context).colorScheme.onInverseSurface,
            corImagem: storeHome.indexIconNavigator == 3
                ? Theme.of(context).colorScheme.onInverseSurface
                : AppColor.primaryColor,
            radius: 20,
            isBadge: false,
            fun: () {
              storeHome.getIndexIconNavigator(3);
            },
          ),
        ],
      ),
    );
  }
}

class IconMenuFloating extends StatelessWidget {
  final void Function() fun;
  final String imagem;
  final Color corImagem;
  final Color cor;
  final double radius;
  final bool isBadge;
  const IconMenuFloating({
    required this.isBadge,
    required this.corImagem,
    required this.imagem,
    required this.cor,
    required this.radius,
    required this.fun,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ConfigData dados = Provider.of<ConfigData>(context, listen: false);
    return CircleAvatar(
      backgroundColor: cor,
      radius: radius,
      child: IconButton(
        onPressed: fun,
        icon: Badge(
          backgroundColor: Theme.of(context).colorScheme.primary,
          alignment:
              Alignment.lerp(const Alignment(0, 5), const Alignment(1, 1.5), 2),
          label: isBadge
              ? Observer(
                  builder: (ctx) => Text("${dados.listProductCar.length}"))
              : null,
          isLabelVisible: isBadge,
          child: Image.asset(
            imagem,
            color: corImagem,
          ),
        ),
      ),
    );
  }
}
