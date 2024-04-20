import 'package:app_fashion_shop/config/theme/app_color.dart';
import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../screens/widgets/icon_menu_floating.dart';

class AppStyle {
  ///Tamanho pego do app: largura e altura
  static (double height, double width) screenSize(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return (height, width);
  }

  static BoxShadow shadow({
    required Color backgroundColor,
    required ({double dx, double dy}) offset,
    required double blurRadius,
  }) {
    return BoxShadow(
      color: backgroundColor,
      offset: Offset(offset.dx, offset.dy),
      blurRadius: blurRadius,
      blurStyle: BlurStyle.normal,
    );
  }

  static TextTheme textTheme() => const TextTheme(
      headlineLarge: TextStyle(
        fontSize: 22,
        color: AppColor.textHeadline4Color,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: AppColor.textFormFildColor,
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ));

  static Widget space({double top = 10}) =>
      Padding(padding: EdgeInsets.only(top: top, right: 10));

  static BottomNavigationBarItem itemNavigator({
    required BuildContext context,
    required bool isLable,
    String? lable,
    required String icon,
    required String title,
    required int index,
    required bool isBadge,
  }) {
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
    return BottomNavigationBarItem(
      label: title,
      icon: Observer(
        builder: (ctx) => IconMenuFloating(
          lable: lable,
          isLable: isLable,
          imagem: icon,
          cor: storeHome.indexIconNavigator == index
              ? AppColor.primaryColor
              : Theme.of(context).colorScheme.surface,
          corImagem: storeHome.indexIconNavigator == index
              ? Theme.of(context).colorScheme.surface
              : AppColor.primaryColor,
          radius: 20,
          isBadge: isBadge,
        ),
      ),
    );
  }

  ///Estilos de textos que serão usados no app
  static TextStyle textBody({double size = 20}) => TextStyle(
        color: AppColor.textHeadline4Color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      );
  static TextStyle textTitlePrimary({double size = 20}) => TextStyle(
        color: AppColor.textHeadline4Color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      );
  static TextStyle textTitleSecondary({double size = 20}) => TextStyle(
        color: AppColor.onPrimaryContainerColor,
        fontSize: size,
        fontWeight: FontWeight.bold,
      );
  static TextStyle textFormFild({double size = 20}) => TextStyle(
        color: AppColor.textFormFildColor,
        fontSize: size,
        fontWeight: FontWeight.w400,
      );

  ///Seção de imagens
  static const String imageLogo = "assets/image/logo.png";
  static const String imageProfile = "assets/image/perfil.png";
  static const String imageFacebook = "assets/image/facebook.png";
  static const String imageGoogle = "assets/image/google.png";
  static const String imageX = "assets/image/x.png";

  ///Imagens de propagandas
  static const String imageAnnouncement001 = "assets/image/propaganda001.png";
  static const String imageAnnouncement002 = "assets/image/propaganda002.png";
  static const String imageAnnouncement003 = "assets/image/propaganda003.png";
  static const String imageAnnouncement004 = "assets/image/propaganda004.png";

  ///Seção de icones
  static const String iconDrawer = "assets/icons/drawer.png";
  static const String iconSearch = "assets/icons/lupa.png";
  static const String iconBack = "assets/icons/voltar.png";
  static const String iconNext = "assets/icons/next.png";
}
