import 'package:app_fashion_shop/components/detail_product/selection_size_and_color_product.dart';
import 'package:app_fashion_shop/config/routes/named_routes.dart';

import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:app_fashion_shop/config/theme/app_color.dart';
import 'package:app_fashion_shop/store/data/storage_product.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class FavoriteProduct extends StatelessWidget {
  const FavoriteProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final StorageProduct storageProduct =
        Provider.of<StorageProduct>(context, listen: false);

    final (double heigth, double width) = AppStyle.screenSize(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              "assets/icons/voltar.png",
            )),
        title: Text(
          "Favoritos",
          style: AppStyle.textTitleSecondary(size: 24),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(width * .02),
            child: IconButton(
              onPressed: () {},
              icon: Observer(
                builder: (ctx) => Badge(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  alignment: Alignment.lerp(
                      const Alignment(0, 5), const Alignment(1, 1.5), 2),
                  isLabelVisible: storageProduct.isEmptyCart,
                  label: Text("${storageProduct.cartProduct.length}"),
                  child: Image.asset("assets/icons/carrinho.png"),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(width * .02),
        child: SizedBox(
          height: heigth,
          width: width,
          child: Observer(
            builder: (ctx) => GridView.custom(
              gridDelegate: SliverQuiltedGridDelegate(
                crossAxisCount: 4,
                mainAxisSpacing: 4,
                crossAxisSpacing: 4,
                pattern: const [
                  QuiltedGridTile(3, 2),
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(3, 2),
                  QuiltedGridTile(2, 2),
                  QuiltedGridTile(2, 4),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: storageProduct.listProductFavorite.length,
                (context, index) => Card(
                  surfaceTintColor: AppColor.onPrimaryContainerColor,
                  elevation: 5,
                  child: LayoutBuilder(
                    builder: (context, constraints) => Padding(
                      padding: EdgeInsets.all(constraints.maxWidth * .02),
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(
                                  context, NamedRoutes.routeProductDetail);
                              storageProduct.getProduct(
                                  product: storageProduct
                                      .listProductFavorite[index]);
                            },
                            child: Container(
                              height: constraints.maxHeight * .9,
                              width: constraints.maxWidth * .5,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                      storageProduct.listProductFavorite[index]
                                          .imageColor[0].image,
                                    ),
                                    fit: BoxFit.cover,
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              right: constraints.maxWidth * .02,
                              left: constraints.maxWidth * .03,
                              top: constraints.maxHeight * .02,
                            ),
                            child: SizedBox(
                              height: constraints.maxHeight * .9,
                              width: constraints.maxWidth * .4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    storageProduct.listProductFavorite[index]
                                                .name.length <
                                            8
                                        ? storageProduct
                                            .listProductFavorite[index].name
                                        : "${storageProduct.listProductFavorite[index].name.characters.take(8)}...",
                                    style: AppStyle.textTitlePrimary(
                                        size: width * .03),
                                  ),
                                  Text(
                                    storageProduct
                                        .listProductFavorite[index].price
                                        .toString(),
                                    style: AppStyle.textTitleSecondary(
                                        size: width * .04),
                                  ),
                                  SelectionColorProduct(
                                    fontSize:
                                        constraints.maxWidth * .4 > width * .3
                                            ? constraints.maxWidth * .035
                                            : constraints.maxWidth * .07,
                                    sizeCircular:
                                        constraints.maxWidth * .4 > width * .3
                                            ? constraints.maxWidth * .05
                                            : constraints.maxWidth * .1,
                                    widthBorder: 02,
                                    product: storageProduct
                                        .listProductFavorite[index],
                                  ),
                                  SelectionSizeProduct(
                                    heightButton:
                                        constraints.maxWidth * .4 > width * .3
                                            ? constraints.maxWidth * .04
                                            : constraints.maxWidth * .08,
                                    widthButton:
                                        constraints.maxWidth * .4 > width * .3
                                            ? constraints.maxWidth * .04
                                            : constraints.maxWidth * .08,
                                    fontSize:
                                        constraints.maxWidth * .4 > width * .3
                                            ? constraints.maxWidth * .035
                                            : constraints.maxWidth * .06,
                                    radiusSize: constraints.maxWidth * .01,
                                    sizePadding: constraints.maxWidth * .01,
                                    product: storageProduct
                                        .listProductFavorite[index],
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: constraints.maxHeight * .04)),
                                  SizedBox(
                                    height: width * .04,
                                    width: width * .2,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        storageProduct.addProductCart(
                                            storageProduct
                                                .listProductFavorite[index]);
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColor.primaryColor,
                                        foregroundColor:
                                            AppColor.onPrimaryColor,
                                        padding: const EdgeInsets.all(0),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                width * .01)),
                                      ),
                                      child: Text(
                                        "Add Carrinho",
                                        style: TextStyle(
                                          fontSize: width * .025,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: constraints.maxHeight * .03)),
                                  InkWell(
                                    onTap: () {
                                      storageProduct.getProduct(
                                          product: storageProduct
                                              .listProductFavorite[index]);
                                      storageProduct.addFavorite(storageProduct
                                          .listProductFavorite[index].id);
                                    },
                                    child: SizedBox(
                                      width: width * .2,
                                      child: Text(
                                        "Excluir",
                                        style: AppStyle.textTitleSecondary(
                                            size: width * .025),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
