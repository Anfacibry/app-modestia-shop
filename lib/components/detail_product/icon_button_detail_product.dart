import 'package:app_fashion_shop/components/icon_menu_floating.dart';
import 'package:app_fashion_shop/store/config_data.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../config/theme/app_color.dart';

class IconButtonDetailProduct extends StatelessWidget {
  const IconButtonDetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final ConfigData dataProduct =
        Provider.of<ConfigData>(context, listen: false);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/icons/voltar.png",
            )),
        IconMenuFloating(
          isLable: false,
          corImagem: dataProduct.product!.isFavorite
              ? Theme.of(context).colorScheme.onInverseSurface
              : AppColor.primaryColor,
          imagem: "assets/icons/favorito.png",
          cor: dataProduct.product!.isFavorite
              ? AppColor.primaryColor
              : Theme.of(context).colorScheme.onInverseSurface,
          radius: 25,
          isBadge: false,
          fun: () {
            dataProduct.addFavorite(dataProduct.product!.id);
          },
        ),
      ],
    );
  }
}
