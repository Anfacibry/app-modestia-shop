import 'package:app_fashion_shop/components/detail_product/information_product.dart';

import 'package:app_fashion_shop/components/home/navigator_pages.dart';

import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:app_fashion_shop/store/data/storage_product.dart';
import 'package:app_fashion_shop/store/store_home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';
import '../components/home/grid_product.dart';
import '../config/theme/app_color.dart';

class DetailProduct extends StatelessWidget {
  const DetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final StorageProduct dados =
        Provider.of<StorageProduct>(context, listen: false);

    final (double height, double width) = AppStyle.screenSize(context);

    return Scaffold(
      appBar: AppBar(
        title: Observer(
          builder: (ctx) => Text(
            dados.product!.name,
            style: AppStyle.textTitleSecondary(tamanho: width * .06),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/icons/voltar.png",
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("assets/icons/favorito.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Observer(
              builder: (ctx) => Badge(
                backgroundColor: Theme.of(context).colorScheme.primary,
                alignment: Alignment.lerp(
                    const Alignment(0, 5), const Alignment(1, 1.5), 2),
                isLabelVisible: dados.isEmptyCart,
                label: Text("${dados.cartProduct.length}"),
                child: Image.asset("assets/icons/carrinho.png"),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: width * .02),
            child: PopupMenuButton<Selection>(
              onSelected: (value) {
                dados.selectingListProduct(value);
              },
              elevation: 5,
              color: AppColor.primaryColor,
              itemBuilder: (contx) => <PopupMenuEntry<Selection>>[
                const PopupMenuItem(
                  value: Selection.vestidos,
                  child: Text(
                    "Vestidos",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: Selection.blusas,
                  child: Text(
                    "Blusas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: Selection.saias,
                  child: Text(
                    "Saias",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
                const PopupMenuItem(
                  value: Selection.bolsas,
                  child: Text(
                    "Bolsas",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
              icon: Image.asset("assets/icons/opcao.png"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Observer(
              builder: (_) => SizedBox(
                height: height * .6,
                width: width,
                child: Stack(children: [
                  PageView(
                    onPageChanged: (indice) {
                      dados.changingProductImageIndex(indice);
                    },
                    children: dados.product!.imageColor
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
                        corImagem: dados.product!.isFavorite
                            ? AppColor.surfaceColor
                            : AppColor.primaryColor,
                        imagem: "assets/icons/favorito.png",
                        cor: dados.product!.isFavorite
                            ? AppColor.primaryColor
                            : AppColor.surfaceColor,
                        radius: 25,
                        isBadge: false,
                        fun: () {
                          dados.addFavorite(dados.product!);
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
                    child: GridProduct(
                      isScreenHome: false,
                      storageProduct: dados,
                      width: width,
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
