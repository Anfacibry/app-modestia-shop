import 'package:app_fashion_shop/config/theme/app_color.dart';
import 'package:flutter/material.dart';

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
        color: AppColor.textHeadline5Color,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: AppColor.textHeadline4Color,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ));

  static Widget space({double top = 10}) =>
      Padding(padding: EdgeInsets.only(top: top, right: 10));

  ///Estilos de textos que serão usados no app
  static TextStyle textBody({double size = 20}) => TextStyle(
        color: AppColor.textHeadline4Color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      );
  static TextStyle textTitlePrimary({double size = 20}) => TextStyle(
        color: AppColor.textHeadline5Color,
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
}
