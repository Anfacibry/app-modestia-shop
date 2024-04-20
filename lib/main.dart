import 'package:app_fashion_shop/config/style/app_style.dart';

import 'package:app_fashion_shop/screens/car_product/car_product.dart';
import 'package:app_fashion_shop/screens/datail_product/detail_product.dart';
import 'package:app_fashion_shop/screens/favorite/favorite.dart';
import 'package:app_fashion_shop/screens/home/home.dart';
import 'package:app_fashion_shop/screens/marketplace/marketplace.dart';
import 'package:app_fashion_shop/screens/registration_user/registration_user.dart';
import 'package:app_fashion_shop/screens/registration_user_network/registration_user_network.dart';
import 'package:app_fashion_shop/store/config_data.dart';

import 'package:app_fashion_shop/store/data/data_product.dart';

import 'package:app_fashion_shop/store/store_home.dart';
import 'package:app_fashion_shop/store/store_login.dart';
import 'package:app_fashion_shop/config/routes/named_routes.dart';
import 'package:app_fashion_shop/config/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'screens/login/login.dart';
import 'package:provider/provider.dart';

void main() => runApp(MultiProvider(
      providers: [
        Provider<StoreLogin>(create: (cont) => StoreLogin()),
        Provider<ConfigData>(create: (cont) => ConfigData()),
        Provider<StoreHome>(create: (cont) => StoreHome()),
        Provider<DataProduct>(create: (cont) => DataProduct()),
      ],
      child: const AppFashionShop(),
    ));

class AppFashionShop extends StatelessWidget {
  const AppFashionShop({super.key});

  @override
  Widget build(BuildContext context) {
    StoreLogin login = Provider.of<StoreLogin>(context, listen: false);

    return Observer(
      builder: (ctx) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: AppColor.primaryColor,
          ),
          textTheme: AppStyle.textTheme(),
          useMaterial3: true,
        ),
        initialRoute:
            login.isLogin ? NamedRoutes.routeHome : NamedRoutes.routeLogin,
        routes: {
          NamedRoutes.routeHome: (ctx) => const Home(),
          NamedRoutes.routeLogin: (ctx) => const Login(),
          NamedRoutes.routMarketplace: (ctx) => const Marketplace(),
          NamedRoutes.routeLoginRegistration: (ctx) => const RegistrationUser(),
          NamedRoutes.routeSocialNetworkRegistration: (ctx) =>
              const RegistrationUserNetwork(),
          NamedRoutes.routeProductDetail: (ctx) => const DetailProduct(),
          NamedRoutes.routeFavorite: (ctx) => const FavoriteProduct(),
          NamedRoutes.routeCarProduct: (ctx) => const CarProduct(),
        },
      ),
    );
  }
}
