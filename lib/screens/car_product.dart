import 'package:app_fashion_shop/components/box_text_form_field.dart';
import 'package:app_fashion_shop/components/card_product/card_product_car.dart';
import 'package:app_fashion_shop/components/card_product/information_value_car_product.dart';
import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:app_fashion_shop/config/theme/app_color.dart';

import 'package:app_fashion_shop/store/config_data.dart';
import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class CarProduct extends StatelessWidget {
  const CarProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final ConfigData dataProduct = Provider.of(context, listen: false);
    final StoreHome storeHome = Provider.of(context, listen: false);
    final (double height, double width) = AppStyle.screenSize(context);

    return Observer(
      builder: (ctx) => Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: storeHome.isHome
              ? IconButton(
                  onPressed: () {
                    storeHome.setIsHome(false);
                    Navigator.pop(context);
                  },
                  icon: Image.asset(AppStyle.iconBack))
              : null,
          title: Text(
            "Carrinho de Compras",
            style: AppStyle.textTitleSecondary(size: 24),
          ),
        ),
        body: dataProduct.isEmptyCart
            ? SingleChildScrollView(
                child: SizedBox(
                  height: height * .8,
                  width: width,
                  child: Column(
                    children: [
                      SizedBox(
                        height: height * .55,
                        width: width,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: width * .05,
                            left: width * .05,
                          ),
                          child: Observer(
                            builder: (ctx) => ListView.builder(
                              itemCount: dataProduct.sizeListProductCar,
                              itemBuilder: (context, index) => CardProductCar(
                                configData: dataProduct,
                                height: height,
                                width: width,
                                index: index,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: height * .02,
                            right: width * .05,
                            left: width * .05,
                          ),
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  BoxTextFormeField(
                                    controller: TextEditingController(),
                                    height: height * .1,
                                    isSenha: false,
                                    text: "Código promocional",
                                    hintText: "Ex: MODE003",
                                  ),
                                  Positioned(
                                    right: width * .0,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        fixedSize:
                                            Size(width * .3, height * .073),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        backgroundColor: AppColor.primaryColor,
                                        foregroundColor:
                                            AppColor.onPrimaryColor,
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        "Aplicar",
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const InformationValueCarProduct(
                                title: "Sub Total",
                                value: 888.30,
                                isTotal: false,
                              ),
                              const InformationValueCarProduct(
                                title: "Desconto",
                                value: 888.30,
                                isTotal: false,
                              ),
                              const InformationValueCarProduct(
                                title: "Total a pagar",
                                value: 888.30,
                                isTotal: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            : Center(
                child: Text(
                  "Lista de carrinho vazia",
                  style: AppStyle.textTitleSecondary(),
                ),
              ),
      ),
    );
  }
}
