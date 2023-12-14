import 'package:app_fashion_shop/store/config_data.dart';

import 'package:app_fashion_shop/store/models/store_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../config/style/app_style.dart';
import '../config/theme/app_color.dart';

class SelectionColorProduct extends StatelessWidget {
  final Product product;
  final double fontSize;
  final double sizeCircular;
  final double widthBorder;

  const SelectionColorProduct({
    required this.fontSize,
    required this.product,
    required this.sizeCircular,
    required this.widthBorder,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Observer(
            builder: (ctx) => Text(
              "Cor: ${product.imageColor[0].name}",
              style: AppStyle.textBody(
                size: fontSize,
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Observer(
            builder: (ctx) => Row(
              children: product.imageColor
                  .map((cores) => Container(
                        margin: const EdgeInsets.only(right: 5),
                        height: sizeCircular,
                        width: sizeCircular,
                        decoration: BoxDecoration(
                          color: cores.color,
                          borderRadius: BorderRadius.circular(35),
                          border: product.imageColor[0].color == cores.color
                              ? Border.all(
                                  color: AppColor.secundaryColor,
                                  width: widthBorder,
                                )
                              : null,
                          boxShadow: [
                            AppStyle.shadow(
                                backgroundColor: Colors.black38,
                                offset: (dx: 0, dy: 2),
                                blurRadius: 2)
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}

class SelectionProductSize extends StatelessWidget {
  final double heightButton;
  final double widthButton;
  final double fontSize;
  final double radiusSize;
  final double sizePadding;
  final Product product;

  const SelectionProductSize({
    required this.heightButton,
    required this.widthButton,
    required this.radiusSize,
    required this.fontSize,
    required this.sizePadding,
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ConfigData dataProduct = Provider.of<ConfigData>(context, listen: false);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Tamanho",
          style: AppStyle.textBody(size: fontSize),
        ),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Observer(
            builder: (ctx) => Row(
              children: product.size
                  .map(
                    (size) => Padding(
                      padding: EdgeInsets.only(right: sizePadding),
                      child: InkWell(
                        onTap: () {
                          dataProduct.tackSizeProduct(
                              size: size, product: product);
                        },
                        child: Observer(
                          builder: (ctx) => Container(
                            height: heightButton,
                            width: widthButton,
                            decoration: BoxDecoration(
                                color: product.tackSize == size
                                    ? AppColor.primaryColor
                                    : AppColor.onPrimaryColor,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(radiusSize)),
                                boxShadow: [
                                  AppStyle.shadow(
                                    backgroundColor: Colors.black12,
                                    offset: (dx: 0, dy: 2),
                                    blurRadius: 2,
                                  ),
                                ]),
                            child: Center(
                              child: Text(
                                size,
                                style: TextStyle(
                                  color: product.tackSize == size
                                      ? AppColor.onPrimaryColor
                                      : AppColor.primaryColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: fontSize,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ],
    );
  }
}
