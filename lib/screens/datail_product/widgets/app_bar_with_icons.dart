import "package:app_fashion_shop/config/routes/named_routes.dart";
import "package:app_fashion_shop/store/config_data.dart";

import "package:flutter/material.dart";
import "package:flutter_mobx/flutter_mobx.dart";

import "../../../config/style/app_style.dart";
import "../../../config/theme/app_color.dart";
import "../../../store/store_home.dart";

AppBar appBarWithIcons({
  required BuildContext context,
  required double width,
  required ConfigData dataProduct,
  required StoreHome storeHome,
}) {
  return AppBar(
    title: Observer(
      builder: (ctx) => Text(
        dataProduct.product!.name,
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
          storeHome.setIsHome(true);
        },
        icon: Image.asset("assets/icons/favorito.png"),
      ),
      IconButton(
        onPressed: () {
          Navigator.pushNamed(context, NamedRoutes.routeCarProduct);
          dataProduct.valueTotalDiscountTack();
          storeHome.setIsHome(true);
        },
        icon: Observer(
          builder: (ctx) => Badge(
            backgroundColor: Theme.of(context).colorScheme.primary,
            alignment: Alignment.lerp(
                const Alignment(0, 5), const Alignment(1, 1.5), 2),
            isLabelVisible: dataProduct.isEmptyCart,
            label: Text("${dataProduct.listProductCar.length}"),
            child: Image.asset("assets/icons/carrinho.png"),
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(right: width * .02),
        child: PopupMenuButton<Selection>(
          onSelected: (value) {
            dataProduct.selectingListProduct(value);
          },
          elevation: 5,
          color: AppColor.primaryColor,
          itemBuilder: (contx) => <PopupMenuEntry<Selection>>[
            PopupMenuItem(
              onTap: () {
                storeHome.updateIndex(0);
                dataProduct.getProduct(
                    product: dataProduct.listProduct[Selection.vestidos]![0]);
              },
              value: Selection.vestidos,
              child: const Text(
                "Vestidos",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            PopupMenuItem(
              onTap: () {
                storeHome.updateIndex(1);
                dataProduct.getProduct(
                    product: dataProduct.listProduct[Selection.blusas]![0]);
              },
              value: Selection.blusas,
              child: const Text(
                "Blusas",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            PopupMenuItem(
              onTap: () {
                storeHome.updateIndex(2);
                dataProduct.getProduct(
                    product: dataProduct.listProduct[Selection.saias]![0]);
              },
              value: Selection.saias,
              child: const Text(
                "Saias",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            PopupMenuItem(
              onTap: () {
                storeHome.updateIndex(3);
                dataProduct.getProduct(
                    product: dataProduct.listProduct[Selection.bolsas]![0]);
              },
              value: Selection.bolsas,
              child: const Text(
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
