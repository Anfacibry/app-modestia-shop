import 'package:app_fashion_shop/store/data/storage_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:provider/provider.dart';

import '../../config/style/app_style.dart';
import '../../config/theme/app_color.dart';

class InformationProduct extends StatelessWidget {
  const InformationProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final StorageProduct storageProduct =
        Provider.of<StorageProduct>(context, listen: false);
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
                    storageProduct.product!.name,
                    style: AppStyle.textTitlePrimary(
                        tamanho: constraints.maxWidth * .065),
                  ),
                  Text(
                    "R\$ ${storageProduct.product!.price}",
                    style: AppStyle.textTitleSecondary(
                        tamanho: constraints.maxWidth * .07),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            "Cor: ${storageProduct.product!.imageColor[storageProduct.indexProduct].name}",
                            style: AppStyle.textBody(
                              tamanho: constraints.maxWidth * .045,
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: storageProduct.product!.imageColor
                                .map((cores) => Container(
                                      margin: const EdgeInsets.only(right: 5),
                                      height: constraints.maxWidth * .1,
                                      width: constraints.maxWidth * .1,
                                      decoration: BoxDecoration(
                                        color: cores.color,
                                        borderRadius: BorderRadius.circular(35),
                                        border: storageProduct
                                                    .product!
                                                    .imageColor[storageProduct
                                                        .indexProduct]
                                                    .color ==
                                                cores.color
                                            ? Border.all(
                                                color: AppColor.secundaryColor,
                                                width: 3,
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
                      ],
                    ),
                  ),
                  AppStyle.space(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tamanho",
                          style: AppStyle.textBody(
                              tamanho: constraints.maxWidth * .045),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: storageProduct.product!.size
                                .map(
                                  (tamanho) => Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        elevation: 5,
                                      ),
                                      onPressed: () {},
                                      child: Text(tamanho),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              AppStyle.space(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.primaryColor,
                        foregroundColor: AppColor.onPrimaryColor,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    onPressed: () {
                      storageProduct.addProductCart(storageProduct.product!);
                    },
                    child: const Text("Add carrinho"),
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
                            "${storageProduct.product!.valuation}",
                            style: AppStyle.textBody(
                                tamanho: constraints.maxWidth * .06),
                          )
                        ],
                      ),
                      Text(
                        "Avaliações",
                        style: AppStyle.textBody(
                            tamanho: constraints.maxWidth * .04),
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
