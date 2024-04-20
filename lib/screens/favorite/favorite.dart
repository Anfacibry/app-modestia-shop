import 'package:app_fashion_shop/screens/favorite/widgets/information_product_favorit.dart';

import 'package:app_fashion_shop/config/routes/named_routes.dart';

import 'package:app_fashion_shop/config/style/app_style.dart';
import 'package:app_fashion_shop/config/theme/app_color.dart';
import 'package:app_fashion_shop/store/config_data.dart';
import 'package:app_fashion_shop/store/store_home.dart';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class FavoriteProduct extends StatelessWidget {
  const FavoriteProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
    final ConfigData configData =
        Provider.of<ConfigData>(context, listen: false);

    final (double heigth, double width) = AppStyle.screenSize(context);
    return Observer(
      builder: (ctx) => Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: storeHome.isHome
              ? IconButton(
                  onPressed: () {
                    storeHome.setIsHome(false);
                    Navigator.pop(context);
                  },
                  icon: Image.asset(AppStyle.iconBack))
              : null,
          title: Text(
            "Favoritos",
            style: AppStyle.textTitleSecondary(size: 24),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(width * .02),
          child: Observer(
            builder: (ctx) => SizedBox(
              height: heigth,
              width: width,
              child: configData.listProductFavorite.isEmpty
                  ? Center(
                      child: Text(
                        "Você não possui produtos favoritos",
                        style: AppStyle.textTitleSecondary(),
                      ),
                    )
                  : Observer(
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
                          childCount: configData.listProductFavorite.length,
                          (context, index) => Card(
                            surfaceTintColor: AppColor.onPrimaryContainerColor,
                            elevation: 5,
                            child: LayoutBuilder(
                              builder: (context, constraints) => Padding(
                                padding:
                                    EdgeInsets.all(constraints.maxWidth * .02),
                                child: Row(
                                  children: [
                                    InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(context,
                                            NamedRoutes.routeProductDetail);
                                        configData.getProduct(
                                            product: configData
                                                .listProductFavorite[index]);
                                      },
                                      child: Container(
                                        height: constraints.maxHeight * .9,
                                        width: constraints.maxWidth * .5,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                              image: AssetImage(
                                                configData
                                                    .listProductFavorite[index]
                                                    .imageColor[0]
                                                    .image,
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
                                        child: InformationProductFavorit(
                                          configData: configData,
                                          index: index,
                                          width: width,
                                          constraints: constraints,
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
      ),
    );
  }
}
