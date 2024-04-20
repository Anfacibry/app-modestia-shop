import 'package:app_fashion_shop/store/config_data.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../config/style/app_style.dart';
import '../../../config/theme/app_color.dart';
import 'bottom_add_remove_product.dart';

class CardProductCar extends StatelessWidget {
  final double height, width;
  final ConfigData dataProduct;
  final int index;
  const CardProductCar({
    required this.dataProduct,
    required this.height,
    required this.width,
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: height * .005),
      child: SizedBox(
        height: height * .12,
        width: width,
        child: LayoutBuilder(
          builder: (ctx, constraints) => Card(
            surfaceTintColor: AppColor.onPrimaryColor,
            elevation: 5,
            child: Row(
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    dataProduct
                        .listProductCar[index].product.imageColor[0].image,
                    width: height * .12,
                    height: height * 9,
                    fit: BoxFit.cover,
                  ),
                ),
                AppStyle.space(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      dataProduct.listProductCar[index].product.name,
                      style: AppStyle.textBody(),
                    ),
                    Observer(
                      builder: (ctx) => Text(
                        (dataProduct.listProductCar[index].product.price *
                                dataProduct.listProductCar[index].amount)
                            .toStringAsFixed(2),
                        style: AppStyle.textTitleSecondary(),
                      ),
                    ),
                    SizedBox(
                      height: constraints.maxWidth * .1,
                      width: constraints.maxWidth * .3,
                      child: Padding(
                        padding:
                            EdgeInsets.only(bottom: constraints.minHeight * .1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            BottomAddRemoveProduct(
                              icon: Icons.remove_circle_outline,
                              height: constraints.maxHeight,
                              dataProduct: dataProduct,
                              index: index,
                              fun: () {
                                dataProduct.removeProductCar(
                                  productCar: dataProduct.listProductCar[index],
                                  index: index,
                                );
                                dataProduct.valueTotalDiscountTack();
                              },
                            ),
                            Observer(
                              builder: (ctx) => Text(
                                dataProduct.listProductCar[index].amount
                                    .toString(),
                                style: AppStyle.textBody(),
                              ),
                            ),
                            BottomAddRemoveProduct(
                              icon: Icons.add_circle_outline,
                              height: constraints.maxHeight,
                              dataProduct: dataProduct,
                              index: index,
                              fun: () {
                                dataProduct.addMoreProduct(
                                  dataProduct.listProductCar[index],
                                );
                                dataProduct.valueTotalDiscountTack();
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Padding(
                  padding: EdgeInsets.only(right: constraints.maxWidth * .1),
                  child: Text(
                    dataProduct.listProductCar[index].product.tackSize,
                    style: AppStyle.textBody(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
