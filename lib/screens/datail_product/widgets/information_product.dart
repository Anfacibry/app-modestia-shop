import 'package:app_fashion_shop/widgets/selection_size_and_color_product.dart';
import 'package:app_fashion_shop/config/routes/named_routes.dart';
import 'package:app_fashion_shop/store/config_data.dart';
import 'package:app_fashion_shop/store/store_home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:provider/provider.dart';

import '../../../config/style/app_style.dart';
import '../../../config/theme/app_color.dart';

class InformationProduct extends StatelessWidget {
  const InformationProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final ConfigData dataProduct =
        Provider.of<ConfigData>(context, listen: false);
    final StoreHome storeHome = Provider.of(context, listen: false);
    final (double _, double width) = AppStyle.screenSize(context);
    return Container(
      padding: EdgeInsets.only(
          top: 20, left: width * .03, right: width * .03, bottom: 20),
      width: width,
      decoration: BoxDecoration(
        color: AppColor.surfaceColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(width * .1),
          topRight: Radius.circular(width * .1),
        ),
      ),
      child: LayoutBuilder(
        builder: (context, constraints) => Observer(
          builder: (ctx) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    dataProduct.product!.name,
                    style: AppStyle.textTitlePrimary(
                        size: constraints.maxWidth * .065),
                  ),
                  Text(
                    "R\$ ${dataProduct.product!.price}",
                    style: AppStyle.textTitleSecondary(
                        size: constraints.maxWidth * .07),
                  ),
                ],
              ),
              AppStyle.space(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: constraints.maxWidth * .4,
                    child: SelectionColorProduct(
                      width: width,
                      fontSize: constraints.maxWidth * .045,
                      product: dataProduct.product!,
                      sizeCircular: constraints.maxWidth * .1,
                      widthBorder: 3,
                    ),
                  ),
                  AppStyle.space(),
                  Expanded(
                      child: SelectionProductSize(
                    heightButton: constraints.maxWidth * .08,
                    widthButton: constraints.maxWidth * .08,
                    fontSize: constraints.maxWidth * .045,
                    radiusSize: constraints.maxWidth * .02,
                    sizePadding: constraints.maxWidth * .02,
                    product: dataProduct.product!,
                  )),
                ],
              ),
              AppStyle.space(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.onPrimaryColor,
                        foregroundColor: AppColor.primaryColor,
                        elevation: 5,
                        fixedSize: Size(constraints.maxWidth * .3,
                            constraints.maxHeight * .2),
                        padding: const EdgeInsets.all(0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      dataProduct.addProductCart(dataProduct.product!);
                    },
                    child: Text(
                      "Add carrinho",
                      style: AppStyle.textTitleSecondary(size: 16),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryColor,
                        foregroundColor: AppColor.onPrimaryColor,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      storeHome.setIsHome(true);
                      dataProduct.addProductCart(dataProduct.product!);
                      Navigator.pushNamed(context, NamedRoutes.routeCarProduct);
                    },
                    child: const Text("Comprar agora"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                            size: constraints.maxWidth * .09,
                          ),
                          Text(
                            "${dataProduct.product!.valuation}",
                            style: AppStyle.textBody(
                                size: constraints.maxWidth * .06),
                          )
                        ],
                      ),
                      Text(
                        "Avaliações",
                        style:
                            AppStyle.textBody(size: constraints.maxWidth * .04),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
