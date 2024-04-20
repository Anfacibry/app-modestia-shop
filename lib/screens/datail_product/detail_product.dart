import 'package:app_fashion_shop/screens/datail_product/widgets/app_bar_with_icons.dart';
import 'package:app_fashion_shop/screens/datail_product/widgets/information_product.dart';

import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:app_fashion_shop/store/config_data.dart';
import 'package:app_fashion_shop/store/store_home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../widgets/icon_menu_floating.dart';
import '../marketplace/widgets/grid_product.dart';
import '../../config/theme/app_color.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final ConfigData configData =
        Provider.of<ConfigData>(context, listen: false);
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);

    final (double height, double width) = AppStyle.screenSize(context);

    return Scaffold(
      appBar: appBarWithIcons(
        context: context,
        dataProduct: configData,
        width: width,
        storeHome: storeHome,
      ),
      body: SingleChildScrollView(
        controller: configData.controller,
        child: Column(
          children: [
            Observer(
              builder: (_) => SizedBox(
                height: height * .6,
                width: width,
                child: Stack(children: [
                  PageView.builder(
                    onPageChanged: (indice) {
                      configData.changingProductImageIndex(indice);
                    },
                    controller: configData.pagController,
                    itemCount: configData.product!.imageColor.length,
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
                                    configData
                                        .product!
                                        .imageColor[
                                            configData.indexImageProduct]
                                        .image,
                                    fit: BoxFit.cover,
                                  ),
                                ));
                      },
                      child: Observer(
                        builder: (ctx) => Image.asset(
                          configData.product!.imageColor[index].image,
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
                        corImagem: configData.product!.isFavorite
                            ? AppColor.surfaceColor
                            : AppColor.primaryColor,
                        imagem: "assets/icons/favorito.png",
                        cor: configData.product!.isFavorite
                            ? AppColor.primaryColor
                            : AppColor.surfaceColor,
                        radius: 25,
                        isLable: false,
                        isBadge: false,
                        fun: () {
                          configData.addFavorite(configData.product!.id);
                        },
                      ),
                    ),
                  ),
                  configData.indexImageProduct == 0
                      ? const SizedBox()
                      : Positioned(
                          top: width * .5,
                          left: width * .0005,
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset("assets/icons/voltar.png")),
                        ),
                  configData.indexImageProduct ==
                          configData.product!.imageColor.length - 1
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
                    listProduct: configData.listProductSelection,
                    sizeList: configData.sizeList,
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
