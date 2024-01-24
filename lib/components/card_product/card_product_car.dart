import 'package:app_fashion_shop/store/config_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../config/style/app_style.dart';
import '../../config/theme/app_color.dart';
import 'bottom_add_remove_product.dart';

class CardProductCar extends StatelessWidget {
  final double height, width;
  final ConfigData configData;
  final int index;
  const CardProductCar({
    required this.configData,
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
                    configData
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
                      configData.listProductCar[index].product.name,
                      style: AppStyle.textBody(),
                    ),
                    Observer(
                      builder: (ctx) => Text(
                        (configData.listProductCar[index].product.price *
                                configData.listProductCar[index].amount)
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
                              title: "-",
                              height: constraints.maxHeight,
                              dataProduct: configData,
                              index: index,
                              fun: () {
                                configData.removeProduct(
                                  productCar: configData.listProductCar[index],
                                  index: index,
                                );
                              },
                            ),
                            Observer(
                              builder: (ctx) => Text(
                                configData.listProductCar[index].amount
                                    .toString(),
                                style: AppStyle.textBody(),
                              ),
                            ),
                            BottomAddRemoveProduct(
                              title: "+",
                              height: constraints.maxHeight,
                              dataProduct: configData,
                              index: index,
                              fun: () {
                                configData.addProductMore(
                                    configData.listProductCar[index]);
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
                    configData.listProductCar[index].product.tackSize,
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
