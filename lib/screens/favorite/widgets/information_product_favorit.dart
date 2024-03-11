import 'package:app_fashion_shop/store/config_data.dart';
import 'package:flutter/material.dart';

import '../../../config/style/app_style.dart';
import '../../../config/theme/app_color.dart';
import '../../../widgets/selection_size_and_color_product.dart';

class InformationProductFavorit extends StatelessWidget {
  final ConfigData configData;
  final int index;
  final double width;
  final BoxConstraints constraints;
  const InformationProductFavorit({
    super.key,
    required this.configData,
    required this.index,
    required this.width,
    required this.constraints,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          configData.listProductFavorite[index].name.length < 8
              ? configData.listProductFavorite[index].name
              : "${configData.listProductFavorite[index].name.characters.take(8)}...",
          style: AppStyle.textTitlePrimary(size: width * .03),
        ),
        Text(
          configData.listProductFavorite[index].price.toString(),
          style: AppStyle.textTitleSecondary(size: width * .04),
        ),
        SelectionColorProduct(
          width: width,
          fontSize: constraints.maxWidth * .4 > width * .3
              ? constraints.maxWidth * .035
              : constraints.maxWidth * .07,
          sizeCircular: constraints.maxWidth * .4 > width * .3
              ? constraints.maxWidth * .05
              : constraints.maxWidth * .1,
          widthBorder: 02,
          product: configData.listProductFavorite[index],
        ),
        SelectionProductSize(
          heightButton: constraints.maxWidth * .4 > width * .3
              ? constraints.maxWidth * .04
              : constraints.maxWidth * .08,
          widthButton: constraints.maxWidth * .4 > width * .3
              ? constraints.maxWidth * .04
              : constraints.maxWidth * .08,
          fontSize: constraints.maxWidth * .4 > width * .3
              ? constraints.maxWidth * .035
              : constraints.maxWidth * .06,
          radiusSize: constraints.maxWidth * .01,
          sizePadding: constraints.maxWidth * .01,
          product: configData.listProductFavorite[index],
        ),
        Padding(padding: EdgeInsets.only(top: constraints.maxHeight * .04)),
        SizedBox(
          height: width * .04,
          width: width * .2,
          child: ElevatedButton(
            onPressed: () {
              configData.addProductCart(configData.listProductFavorite[index]);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.primaryColor,
              foregroundColor: AppColor.onPrimaryColor,
              padding: const EdgeInsets.all(0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(width * .01)),
            ),
            child: Text(
              "Add Carrinho",
              style: TextStyle(
                fontSize: width * .025,
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(top: constraints.maxHeight * .03)),
        InkWell(
          onTap: () {
            configData.getProduct(
                product: configData.listProductFavorite[index]);
            configData.addFavorite(configData.listProductFavorite[index].id);
          },
          child: SizedBox(
            width: width * .2,
            child: Text(
              "Excluir",
              style: AppStyle.textTitleSecondary(size: width * .025),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
