import 'package:app_fashion_shop/screens/car_product/widgets/card_product_car.dart';
import 'package:app_fashion_shop/screens/car_product/widgets/information_value_car_product.dart';
import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:app_fashion_shop/store/config_data.dart';

import 'package:app_fashion_shop/store/store_home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../config/theme/app_color.dart';
import '../widgets/box_text_form_field_suffix_icon.dart';

class CarProduct extends StatelessWidget {
  const CarProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final ConfigData dataProduct =
        Provider.of<ConfigData>(context, listen: false);

    final StoreHome storeHome = Provider.of(context, listen: false);
    final (double height, double width) = AppStyle.screenSize(context);

    final TextEditingController textEditingControllerCupom =
        TextEditingController(text: dataProduct.nameCupomTextController);

    return Observer(
      builder: (ctx) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
            ? SizedBox(
                height: storeHome.isHome ? height * .9 : height * .83,
                width: width,
                child: Column(
                  children: [
                    Observer(
                      builder: (ctx) => Expanded(
                        flex: storeHome.isHome ? 6 : 7,
                        child: Padding(
                          padding: EdgeInsets.only(
                            right: width * .05,
                            left: width * .05,
                          ),
                          child: Observer(
                            builder: (ctx) => ListView.builder(
                              itemCount: dataProduct.sizeListProductCar,
                              itemBuilder: (context, index) => CardProductCar(
                                dataProduct: dataProduct,
                                height: height,
                                width: width,
                                index: index,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Observer(
                      builder: (ctx) => Expanded(
                        flex: storeHome.isHome ? 3 : 4,
                        child: Padding(
                          padding: EdgeInsets.only(
                            top: height * .01,
                            right: width * .05,
                            left: width * .05,
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                BoxTextFormeFieldSuffixIcon(
                                  controller: textEditingControllerCupom,
                                  height: height * .065,
                                  text: "Código promocional",
                                  hintText: "Ex: MODE003",
                                  fun: (text) {
                                    dataProduct.tackNameCupom(
                                        textEditingControllerCupom.text);
                                  },
                                  childSuffixIcon: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      fixedSize: Size(
                                        width * .4,
                                        height * .065,
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      backgroundColor: AppColor.primaryColor,
                                      foregroundColor: AppColor.onPrimaryColor,
                                    ),
                                    onPressed: () {
                                      dataProduct.tackNameCupom(
                                          textEditingControllerCupom.text);
                                      dataProduct.valueTotalDiscountTack();
                                      dataProduct
                                          .clearNameCupomTextController();
                                      textEditingControllerCupom.clear();
                                    },
                                    child: const Text(
                                      "Aplicar",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                AppStyle.space(top: height * .01),
                                Observer(
                                  builder: (ctx) => InformationValueCarProduct(
                                    title: "Sub Total",
                                    value: double.parse(dataProduct
                                        .valueTotalProductCar
                                        .toStringAsFixed(2)),
                                    lengthList: 8,
                                    isTotal: false,
                                  ),
                                ),
                                AppStyle.space(),
                                Observer(
                                  builder: (ctx) => InformationValueCarProduct(
                                    title: "Desconto",
                                    value: double.parse(dataProduct.discount
                                        .toStringAsFixed(2)),
                                    lengthList: 9,
                                    isTotal: false,
                                  ),
                                ),
                                AppStyle.space(),
                                Observer(
                                  builder: (ctx) => InformationValueCarProduct(
                                    title: "Total a pagar",
                                    value: dataProduct
                                                .valueTotalProductDiscountCart ==
                                            0.0
                                        ? dataProduct.valueTotalProductCar
                                        : dataProduct
                                            .valueTotalProductDiscountCart,
                                    lengthList: 5,
                                    isTotal: true,
                                  ),
                                ),
                                AppStyle.space(top: height * .01),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: AppColor.primaryColor,
                                    elevation: 5,
                                    fixedSize: Size(
                                      width * .8,
                                      height * .06,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    padding: const EdgeInsets.all(0),
                                    foregroundColor: AppColor.onPrimaryColor,
                                    textStyle: AppStyle.textTitleSecondary(),
                                  ),
                                  onPressed: () {},
                                  child: const Text("Finalizar"),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
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
