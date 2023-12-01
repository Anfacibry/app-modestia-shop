import 'package:app_fashion_shop/components/app_bar.dart';
import 'package:app_fashion_shop/components/box_text_form_field.dart';

import 'package:app_fashion_shop/components/home/navigator_pages.dart';

import 'package:app_fashion_shop/components/home/row_botoes_selecao.dart';
import 'package:app_fashion_shop/components/home/grid_product.dart';
import 'package:app_fashion_shop/components/container_with_shadow.dart';

import 'package:app_fashion_shop/store/store_home.dart';

import 'package:app_fashion_shop/config/style/app_style.dart';

import 'package:app_fashion_shop/config/theme/app_color.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../components/home/announcement.dart';
import '../store/data/storage_product.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
    final StorageProduct dados =
        Provider.of<StorageProduct>(context, listen: false);
    final (double height, double width) = AppStyle.screenSize(context);

    return Scaffold(
      drawer: const Drawer(),
      appBar: appBar(width),
      body: SizedBox(
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
                    builder: (context, constraints) => Row(
                      children: [
                        Expanded(
                          child: ContainerWithShadow(
                            size: (heigth: null, width: null),
                            containerColor: AppColor.onPrimaryColor,
                            shadow: AppStyle.shadow(
                              backgroundColor: Colors.black26,
                              offset: (dx: 0, dy: 5),
                              blurRadius: 2,
                            ),
                            radiusCircular: 20,
                            child: const BoxTextFormeField(
                              isSenha: false,
                              text: "Pesquisar",
                              hintText: "Ex: Vestido longo",
                              borderColor: AppColor.secundaryContainerColor,
                            ),
                          ),
                        ),
                        AppStyle.space(top: 20),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.primaryColor,
                            elevation: 5,
                            fixedSize: Size(constraints.maxHeight * .7,
                                constraints.maxHeight * .7),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
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
                ),
                AnnouncementHome(
                    storeHome: storeHome, height: height, width: width),
                AppStyle.space(top: 10),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
                  child: RowSelectionButton(),
                ),
                SizedBox(
                  height: height * .7,
                  width: width,
                  child: GridProduct(
                      isScreenHome: true, storageProduct: dados, width: width),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const NavigatorPages(),
    );
  }
}
