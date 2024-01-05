import 'package:app_fashion_shop/config/routes/named_routes.dart';
import 'package:app_fashion_shop/store/config_data.dart';
import 'package:app_fashion_shop/store/models/store_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'navigator_screens.dart';
import '../../config/style/app_style.dart';
import '../../config/theme/app_color.dart';

class GridProduct extends StatelessWidget {
  final bool isScreenHome;
  final List<Product> listProduct;
  final double width;
  final int sizeList;
  final Axis axisDirection;

  const GridProduct({
    required this.isScreenHome,
    required this.listProduct,
    required this.sizeList,
    required this.width,
    required this.axisDirection,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ConfigData dataProduct =
        Provider.of<ConfigData>(context, listen: false);
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
            child: GridView.builder(
              scrollDirection: axisDirection,
              itemCount: sizeList,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 4,
                mainAxisSpacing: 4,
                childAspectRatio: axisDirection == Axis.horizontal ? 1.8 : .6,
              ),
              itemBuilder: (contextGrid, indice) => InkWell(
                onTap: () {
                  dataProduct.getProduct(product: listProduct[indice]);
                  dataProduct.changingProductImageIndex(0);
                  isScreenHome ? null : dataProduct.setInitScrool();

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
                              listProduct[indice].imageColor[0].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.only(left: 5, right: 5),
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
                                              listProduct[indice].name,
                                              style: AppStyle.textTitlePrimary(
                                                  size: constraints.maxHeight *
                                                      0.05),
                                            )),
                                        Text(
                                          listProduct[indice].price.toString(),
                                          style: AppStyle.textTitleSecondary(
                                              size:
                                                  constraints.maxHeight * 0.06),
                                        ),
                                        Text(
                                          "No pix\n Ou x de ${(listProduct[indice].price / 3).toStringAsFixed(2)}",
                                          style: AppStyle.textBody(
                                              size:
                                                  constraints.maxHeight * 0.04),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: constraints.maxWidth * .3,
                                    child: Observer(
                                      builder: (_) => IconMenuFloating(
                                        corImagem:
                                            listProduct[indice].isFavorite
                                                ? AppColor.surfaceColor
                                                : AppColor.primaryColor,
                                        imagem: "assets/icons/favorito.png",
                                        cor: listProduct[indice].isFavorite
                                            ? AppColor.primaryColor
                                            : AppColor.surfaceColor,
                                        radius: constraints.maxHeight * 0.07,
                                        isBadge: false,
                                        fun: () {
                                          dataProduct.getProduct(
                                              product: listProduct[indice]);
                                          dataProduct
                                              .changingProductImageIndex(0);
                                          dataProduct.addFavorite(
                                              listProduct[indice].id);
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
    );
  }
}
