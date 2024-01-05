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
                  PageView.builder(
                    onPageChanged: (indice) {
                      dataProduct.changingProductImageIndex(indice);
                    },
                    controller: dataProduct.pagController,
                    itemCount: dataProduct.product!.imageColor.length,
                    itemBuilder: (ctx, index) => InkWell(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                                  clipBehavior: Clip.antiAlias,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
                                  contentPadding: const EdgeInsets.all(0),
                                  content: Image.asset(
                                    dataProduct
                                        .product!
                                        .imageColor[
                                            dataProduct.indexImageProduct]
                                        .image,
                                    fit: BoxFit.cover,
                                  ),
                                ));
                      },
                      child: Observer(
                        builder: (ctx) => Image.asset(
                          dataProduct.product!.imageColor[index].image,
                          height: height * .5,
                          width: width,
                          fit: BoxFit.cover,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
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
                  dataProduct.indexImageProduct == 0
                      ? const SizedBox()
                      : Positioned(
                          top: width * .5,
                          left: width * .0005,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/icons/voltar.png")),
                        ),
                  dataProduct.indexImageProduct ==
                          dataProduct.product!.imageColor.length - 1
                      ? const SizedBox()
                      : Positioned(
                          top: width * .5,
                          right: width * .0005,
                          child: IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/icons/next.png",
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
              child: SizedBox(
                height: height * .7,
                width: width,
                child: Observer(
                  builder: (ctx) => GridProduct(
                    axisDirection: Axis.horizontal,
                    isScreenHome: false,
                    listProduct: dataProduct.listProductSelection,
                    sizeList: dataProduct.sizeList,
                    width: width,
                  ),
                ),
              ),
            ),
            AppStyle.space()
          ],
        ),
      ),
    );
  }
}
