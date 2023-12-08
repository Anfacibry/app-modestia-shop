import "package:app_fashion_shop/config/routes/named_routes.dart";
import "package:app_fashion_shop/store/data/storage_product.dart";
import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";

import "../../config/style/app_style.dart";
import "../../config/theme/app_color.dart";
import "../../store/store_home.dart";

AppBar appBarWithIcons({
  required BuildContext context,
  required double width,
  required StorageProduct storageProduct,
}) {
  return AppBar(
    title: Observer(
      builder: (ctx) => Text(
        storageProduct.product!.name,
        style: AppStyle.textTitleSecondary(size: width * .06),
      ),
    ),
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Image.asset(
          "assets/icons/voltar.png",
        )),
    actions: [
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, NamedRoutes.routeFavorite);
        },
        icon: Image.asset("assets/icons/favorito.png"),
      ),
      IconButton(
        onPressed: () {},
        icon: Observer(
          builder: (ctx) => Badge(
            backgroundColor: Theme.of(context).colorScheme.primary,
            alignment: Alignment.lerp(
                const Alignment(0, 5), const Alignment(1, 1.5), 2),
            isLabelVisible: storageProduct.isEmptyCart,
            label: Text("${storageProduct.cartProduct.length}"),
            child: Image.asset("assets/icons/carrinho.png"),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: width * .02),
        child: PopupMenuButton<Selection>(
          onSelected: (value) {
            storageProduct.selectingListProduct(value);
          },
          elevation: 5,
          color: AppColor.primaryColor,
          itemBuilder: (contx) => <PopupMenuEntry<Selection>>[
            const PopupMenuItem(
              value: Selection.vestidos,
              child: Text(
                "Vestidos",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const PopupMenuItem(
              value: Selection.blusas,
              child: Text(
                "Blusas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const PopupMenuItem(
              value: Selection.saias,
              child: Text(
                "Saias",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            const PopupMenuItem(
              value: Selection.bolsas,
              child: Text(
                "Bolsas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
          icon: Image.asset("assets/icons/opcao.png"),
        ),
      ),
    ],
  );
}
