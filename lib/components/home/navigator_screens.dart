import 'package:app_fashion_shop/config/routes/named_routes.dart';
import 'package:app_fashion_shop/store/data/storage_product.dart';
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
    final StorageProduct storageProduct =
        Provider.of<StorageProduct>(context, listen: false);
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
            cor: storeHome.home
                ? AppColor.primaryColor
                : Theme.of(context).colorScheme.onInverseSurface,
            corImagem: storeHome.home
                ? Theme.of(context).colorScheme.onInverseSurface
                : AppColor.primaryColor,
            radius: 20,
            isBadge: false,
            fun: () {
              storeHome.selectingIcon(IconSelection.home);
            },
          ),
          IconMenuFloating(
            imagem: "assets/icons/favorito.png",
            cor: storeHome.favorite
                ? AppColor.primaryColor
                : Theme.of(context).colorScheme.onInverseSurface,
            corImagem: storeHome.favorite
                ? Theme.of(context).colorScheme.onInverseSurface
                : AppColor.primaryColor,
            radius: 25,
            isBadge: false,
            fun: () {
              storeHome.selectingIcon(IconSelection.home);
              Navigator.pushNamed(context, NamedRoutes.routeFavorite);
            },
          ),
          IconMenuFloating(
            imagem: "assets/icons/carrinho.png",
            cor: storeHome.cart
                ? AppColor.primaryColor
                : Theme.of(context).colorScheme.onInverseSurface,
            corImagem: storeHome.cart
                ? Theme.of(context).colorScheme.onInverseSurface
                : AppColor.primaryColor,
            radius: 25,
            isBadge: storageProduct.isEmptyCart,
            fun: () {
              storeHome.selectingIcon(IconSelection.carrinho);
            },
          ),
          IconMenuFloating(
            imagem: "assets/icons/perfil.png",
            cor: storeHome.profile
                ? AppColor.primaryColor
                : Theme.of(context).colorScheme.onInverseSurface,
            corImagem: storeHome.profile
                ? Theme.of(context).colorScheme.onInverseSurface
                : AppColor.primaryColor,
            radius: 25,
            isBadge: false,
            fun: () {
              storeHome.selectingIcon(IconSelection.perfil);
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
    final StorageProduct dados =
        Provider.of<StorageProduct>(context, listen: false);
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
              ? Observer(builder: (ctx) => Text("${dados.cartProduct.length}"))
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
