import 'package:app_fashion_shop/components/detail_product/app_bar_with_icons.dart';
import 'package:app_fashion_shop/components/detail_product/information_product.dart';

import 'package:app_fashion_shop/components/home/navigator_screens.dart';

import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:app_fashion_shop/store/config_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../components/home/grid_product.dart';
import '../config/theme/app_color.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final ConfigData dataProduct =
        Provider.of<ConfigData>(context, listen: false);

    final (double height, double width) = AppStyle.screenSize(context);

    return Scaffold(
      appBar: appBarWithIcons(
        context: context,
        configData: dataProduct,
        width: width,
      ),
      body: SingleChildScrollView(
        controller: dataProduct.controller,
        child: Column(
          children: [
            Observer(
              builder: (_) => SizedBox(
                height: height * .6,
                width: width,
                child: Stack(children: [
                  PageView(
                    onPageChanged: (indice) {
                      dataProduct.changingProductImageIndex(indice);
                    },
                    children: dataProduct.product!.imageColor
                        .map(
                          (elemento) => InkWell(
                            onTap: () {
                              showDialog(
                                  context: context,
                                  builder: (ctx) => AlertDialog(
                                        clipBehavior: Clip.antiAlias,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        contentPadding: const EdgeInsets.all(0),
                                        content: Image.asset(
                                          elemento.image,
                                          fit: BoxFit.cover,
                                        ),
                                      ));
                            },
                            child: Image.asset(
                              elemento.image,
                              height: height * .5,
                              width: width,
                              fit: BoxFit.cover,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        )
                        .toList(),
                  ),
                  Positioned(
                    top: width * .03,
                    right: width * .03,
                    child: Observer(
                      builder: (ctx) => IconMenuFloating(
                        corImagem: dataProduct.product!.isFavorite
                            ? AppColor.surfaceColor
                            : AppColor.primaryColor,
                        imagem: "assets/icons/favorito.png",
                        cor: dataProduct.product!.isFavorite
                            ? AppColor.primaryColor
                            : AppColor.surfaceColor,
                        radius: 25,
                        isBadge: false,
                        fun: () {
                          dataProduct.addFavorite(dataProduct.product!.id);
                        },
                      ),
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: height * .2,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    top: -height * .05,
                    child: const InformationProduct(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: width * .03, right: width * .03),
              child: Column(
                children: [
                  SizedBox(
                    height: height * .7,
                    width: width,
                    child: Observer(
                      builder: (ctx) => GridProduct(
                        isScreenHome: false,
                        listProduct: dataProduct.listProductSelection,
                        sizeList: dataProduct.sizeList,
                        width: width,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
