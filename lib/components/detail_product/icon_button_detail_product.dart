import 'package:app_fashion_shop/components/home/navigator_pages.dart';
import 'package:app_fashion_shop/store/data/storage_product.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../config/theme/app_color.dart';

class IconButtonDetailProduct extends StatelessWidget {
  const IconButtonDetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final StorageProduct storageProduct =
        Provider.of<StorageProduct>(context, listen: false);
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
          corImagem: storageProduct.product!.isFavorite
              ? Theme.of(context).colorScheme.onInverseSurface
              : AppColor.primaryColor,
          imagem: "assets/icons/favorito.png",
          cor: storageProduct.product!.isFavorite
              ? AppColor.primaryColor
              : Theme.of(context).colorScheme.onInverseSurface,
          radius: 25,
          isBadge: false,
          fun: () {
            storageProduct.addFavorite(storageProduct.product!);
          },
        ),
      ],
    );
  }
}
