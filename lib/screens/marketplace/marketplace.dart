import 'package:app_fashion_shop/widgets/box_text_form_field.dart';
import 'package:app_fashion_shop/screens/marketplace/widgets/discount_card.dart';

import 'package:app_fashion_shop/screens/marketplace/widgets/optional_selection.dart';

import 'package:app_fashion_shop/screens/marketplace/widgets/grid_product.dart';
import 'package:app_fashion_shop/widgets/container_with_shadow.dart';
import 'package:app_fashion_shop/screens/marketplace/widgets/row_botoes_selecao.dart';
import 'package:app_fashion_shop/config/style/shimmer_loading_effect/paint_shimmer_gradient.dart';
import 'package:app_fashion_shop/config/style/shimmer_loading_effect/shimmer_gradient.dart';
import 'package:app_fashion_shop/store/config_data.dart';

import 'package:app_fashion_shop/store/store_home.dart';

import 'package:app_fashion_shop/config/style/app_style.dart';

import 'package:app_fashion_shop/config/theme/app_color.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:provider/provider.dart';
import 'package:url_launcher/link.dart';

import 'widgets/announcement.dart';

class Marketplace extends StatelessWidget {
  const Marketplace({super.key});

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
    final ConfigData dataProduct =
        Provider.of<ConfigData>(context, listen: false);
    final (double height, double width) = AppStyle.screenSize(context);

    TextEditingController controller =
        TextEditingController(text: dataProduct.searchController);

    dataProduct.isShimmerMod();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          "Modéstia Shop",
          style: AppStyle.textTitleSecondary(size: 30),
        ),
      ),
      body: PaintShimmerGradient(
        linearGradient: shimmerGradient,
        child: SizedBox(
          height: height,
          width: width,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Column(
                children: [
                  SizedBox(
                    height: width * .2,
                    width: width,
                    child: LayoutBuilder(
                        builder: (context, constraints) => Observer(
                              builder: (ctx) => ShimmerLoading(
                                isLoading: dataProduct.isShimmer,
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ContainerWithShadow(
                                        size: (
                                          heigth: constraints.maxHeight * .7,
                                          width: null
                                        ),
                                        containerColor: AppColor.onPrimaryColor,
                                        shadow: AppStyle.shadow(
                                          backgroundColor: Colors.black26,
                                          offset: (dx: 0, dy: 5),
                                          blurRadius: 2,
                                        ),
                                        radiusCircular: 20,
                                        child: BoxTextFormeField(
                                          fun: (text) {
                                            dataProduct
                                                .searchControllerTack(text);
                                            debugPrint(
                                                dataProduct.searchController);
                                          },
                                          controller: controller,
                                          height: constraints.maxHeight * .7,
                                          isSenha: false,
                                          text: "Pesquisar",
                                          hintText: "Ex: Vestido longo",
                                          borderColor:
                                              AppColor.secundaryContainerColor,
                                        ),
                                      ),
                                    ),
                                    AppStyle.space(top: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        dataProduct.isShimmerMod();
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: AppColor.primaryColor,
                                        elevation: 5,
                                        fixedSize: Size(
                                            constraints.maxHeight * .7,
                                            constraints.maxHeight * .7),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                        ),
                                        padding: const EdgeInsets.all(0),
                                      ),
                                      child: Image.asset(
                                        AppStyle.iconSearch,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )),
                  ),
                  AppStyle.space(),
                  dataProduct.searchList.isEmpty
                      ? Column(
                          children: [
                            AnnouncementHome(
                              storeHome: storeHome,
                              height: height,
                              width: width,
                            ),
                            AppStyle.space(top: 10),
                            SingleChildScrollView(
                              controller: storeHome.controllerPage,
                              scrollDirection: Axis.horizontal,
                              clipBehavior: Clip.none,
                              child: Observer(
                                builder: (ctx) => ShimmerLoading(
                                  isLoading: dataProduct.isShimmer,
                                  child: const RowSelectionButton(),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: height * .7,
                              width: width,
                              child: Observer(
                                builder: (ctx) => ShimmerLoading(
                                  isLoading: dataProduct.isShimmer,
                                  child: GridProduct(
                                    axisDirection: Axis.horizontal,
                                    isScreenHome: true,
                                    listProduct:
                                        dataProduct.listProductSelection,
                                    sizeList: dataProduct.sizeList,
                                    width: width,
                                  ),
                                ),
                              ),
                            ),
                            AppStyle.space(top: 10),
                            Observer(
                              builder: (ctx) => ShimmerLoading(
                                isLoading: dataProduct.isShimmer,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: RowOptionalSelection(width: width),
                                ),
                              ),
                            ),
                            AppStyle.space(top: 10),
                            SizedBox(
                              height: height * .83,
                              width: width,
                              child: Card(
                                surfaceTintColor: AppColor.surfaceColor,
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Mais vendidos",
                                        style: AppStyle.textBody(),
                                      ),
                                      Expanded(
                                        child: Observer(
                                          builder: (ctx) => ShimmerLoading(
                                            isLoading: dataProduct.isShimmer,
                                            child: GridProduct(
                                              axisDirection: Axis.horizontal,
                                              isScreenHome: true,
                                              listProduct:
                                                  dataProduct.bestSellers,
                                              sizeList: 4,
                                              width: width,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            AppStyle.space(top: 10),
                            Observer(
                              builder: (ctx) => ShimmerLoading(
                                isLoading: dataProduct.isShimmer,
                                child: Link(
                                  uri:
                                      Uri.parse("https://guiadoiphone.com.br/"),
                                  builder: (ctx, fun) => InkWell(
                                    onTap: fun,
                                    child: Image.asset(
                                        "assets/image/propaganda003.png"),
                                  ),
                                ),
                              ),
                            ),
                            AppStyle.space(top: 10),
                            SizedBox(
                              height: height * .6,
                              width: width,
                              child: Card(
                                surfaceTintColor: AppColor.surfaceColor,
                                elevation: 5,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Descontos exclusivos",
                                        style: AppStyle.textBody(),
                                      ),
                                      Expanded(
                                          child: LayoutBuilder(
                                        builder: (ctx, constraints) => Observer(
                                          builder: (ctx) => ShimmerLoading(
                                            isLoading: dataProduct.isShimmer,
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
                                              children: [
                                                DiscountCard(
                                                  product: dataProduct
                                                      .bestSellers[0],
                                                  height: constraints.maxHeight,
                                                  width: constraints.maxWidth,
                                                  discount: 15,
                                                ),
                                                DiscountCard(
                                                  product: dataProduct
                                                      .bestSellers[1],
                                                  height: constraints.maxHeight,
                                                  width: constraints.maxWidth,
                                                  discount: 10,
                                                ),
                                                DiscountCard(
                                                  product: dataProduct
                                                      .bestSellers[2],
                                                  height: constraints.maxHeight,
                                                  width: constraints.maxWidth,
                                                  discount: 5,
                                                ),
                                                DiscountCard(
                                                  product: dataProduct
                                                      .listProductSelection[3],
                                                  height: constraints.maxHeight,
                                                  width: constraints.maxWidth,
                                                  discount: 20,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : Observer(
                          builder: (ctx) => SizedBox(
                            height: height * .7,
                            width: width,
                            child: GridProduct(
                              axisDirection: Axis.vertical,
                              isScreenHome: true,
                              listProduct: dataProduct.searchList,
                              sizeList: dataProduct.searchList.length,
                              width: width,
                            ),
                          ),
                        ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
