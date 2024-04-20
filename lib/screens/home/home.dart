import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:app_fashion_shop/screens/car_product/car_product.dart';
import 'package:app_fashion_shop/screens/favorite/favorite.dart';
import 'package:app_fashion_shop/screens/marketplace/marketplace.dart';
import 'package:app_fashion_shop/screens/perfil/perfil.dart';
import 'package:app_fashion_shop/store/config_data.dart';

import 'package:app_fashion_shop/store/store_home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
    final ConfigData configData =
        Provider.of<ConfigData>(context, listen: false);
    final (double _, double _) = AppStyle.screenSize(context);

    List<Widget> listWidgets = const [
      Marketplace(),
      FavoriteProduct(),
      CarProduct(),
      Perfil(),
    ];

    return Scaffold(
      body: Observer(
        builder: (ctx) => Center(
          child: listWidgets.elementAt(storeHome.indexIconNavigator),
        ),
      ),
      bottomNavigationBar: Observer(
        builder: (ctx) => BottomNavigationBar(
          currentIndex: storeHome.indexIconNavigator,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          unselectedLabelStyle: AppStyle.textBody(size: 16),
          selectedLabelStyle: AppStyle.textTitlePrimary(size: 16),
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            storeHome.getIndexIconNavigator(index);
            configData.valueTotalDiscountTack();
          },
          items: [
            AppStyle.itemNavigator(
              isLable: false,
              title: "Home",
              context: context,
              icon: "assets/icons/home.png",
              index: 0,
              isBadge: false,
            ),
            AppStyle.itemNavigator(
              isLable: false,
              title: "Favorito",
              context: context,
              icon: "assets/icons/favorito.png",
              index: 1,
              isBadge: false,
            ),
            AppStyle.itemNavigator(
              isLable: true,
              lable: configData.listProductCar.length.toString(),
              title: "Carrinho",
              context: context,
              icon: "assets/icons/carrinho.png",
              index: 2,
              isBadge: configData.isEmptyCart,
            ),
            AppStyle.itemNavigator(
              isLable: false,
              title: "Perfil",
              context: context,
              icon: "assets/icons/perfil.png",
              index: 3,
              isBadge: false,
            ),
          ],
        ),
      ),
    );
  }
}
