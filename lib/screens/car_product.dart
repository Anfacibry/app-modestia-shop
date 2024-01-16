import 'package:app_fashion_shop/components/home/navigator_screens.dart';
import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../config/routes/named_routes.dart';

class CarProduct extends StatelessWidget {
  const CarProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of(context, listen: false);
    final (double height, double width) = AppStyle.screenSize(context);
    return PopScope(
      canPop: false,
      onPopInvoked: (pop) {
        storeHome.getIndexIconNavigator(0);
        Navigator.pushReplacementNamed(context, NamedRoutes.routeHome);
      },
      child: Scaffold(
        body: SizedBox(
          height: height,
          width: width,
        ),
        bottomNavigationBar: NavigatorScreens(height: height),
      ),
    );
  }
}
