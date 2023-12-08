import 'package:app_fashion_shop/config/routes/named_routes.dart';
import 'package:app_fashion_shop/store/data/storage_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'navigator_screens.dart';
import '../../config/style/app_style.dart';
import '../../config/theme/app_color.dart';

class GridProduct extends StatelessWidget {
  final bool isScreenHome;
  final StorageProduct storageProduct;
  final double width;
  const GridProduct({
    required this.isScreenHome,
    required this.storageProduct,
    required this.width,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: LayoutBuilder(
        builder: (contextBuilder1, constraints) => SizedBox(
          height: constraints.maxHeight,
          width: constraints.maxWidth,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
            ),
            child: Observer(
              builder: (_) => GridView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: storageProduct.sizeList,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 4,
                  childAspectRatio: 1.8,
                ),
                itemBuilder: (contextGrid, indice) => InkWell(
                  onTap: () {
                    storageProduct.getProduct(
                        product: storageProduct.listProduct[indice]);
                    storageProduct.changingProductImageIndex(0);
                    isScreenHome ? null : storageProduct.setInitScrool();

                    isScreenHome
                        ? Navigator.pushNamed(
                            context, NamedRoutes.routeProductDetail)
                        : null;
                  },
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: LayoutBuilder(
                      builder: (contextBuildCard, constraints) => Observer(
                        builder: (_) => Column(
                          children: [
                            SizedBox(
                              height: constraints.maxHeight * .7,
                              width: constraints.maxWidth,
                              child: Image.asset(
                                storageProduct
                                    .listProduct[indice].imageColor[0].image,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                decoration: const BoxDecoration(
                                  color: AppColor.surfaceColor,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: constraints.maxWidth * .6,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Text(
                                                storageProduct
                                                    .listProduct[indice].name,
                                                style:
                                                    AppStyle.textTitlePrimary(
                                                        size: constraints
                                                                .maxHeight *
                                                            0.05),
                                              )),
                                          Text(
                                            storageProduct
                                                .listProduct[indice].price
                                                .toString(),
                                            style: AppStyle.textTitleSecondary(
                                                size: constraints.maxHeight *
                                                    0.06),
                                          ),
                                          Text(
                                            "No pix\n Ou x de ${(storageProduct.listProduct[indice].price / 3).toStringAsFixed(2)}",
                                            style: AppStyle.textBody(
                                                size: constraints.maxHeight *
                                                    0.04),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: constraints.maxWidth * .3,
                                      child: Observer(
                                        builder: (_) => IconMenuFloating(
                                          corImagem: storageProduct
                                                  .listProduct[indice]
                                                  .isFavorite
                                              ? AppColor.surfaceColor
                                              : AppColor.primaryColor,
                                          imagem: "assets/icons/favorito.png",
                                          cor: storageProduct
                                                  .listProduct[indice]
                                                  .isFavorite
                                              ? AppColor.primaryColor
                                              : AppColor.surfaceColor,
                                          radius: constraints.maxHeight * 0.07,
                                          isBadge: false,
                                          fun: () {
                                            storageProduct.getProduct(
                                                product: storageProduct
                                                    .listProduct[indice]);
                                            storageProduct
                                                .changingProductImageIndex(0);
                                            storageProduct.addFavorite(
                                                storageProduct
                                                    .listProduct[indice].id);
                                          },
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
      ),
    );
  }
}
