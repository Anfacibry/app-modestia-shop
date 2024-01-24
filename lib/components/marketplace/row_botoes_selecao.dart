import 'package:app_fashion_shop/store/config_data.dart';
import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../config/style/app_style.dart';

import 'package:app_fashion_shop/config/theme/app_color.dart';

class SelectionButton extends StatelessWidget {
  final bool selection;
  final String titleButton;
  final void Function() fun;

  const SelectionButton({
    required this.selection,
    required this.titleButton,
    required this.fun,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final (double _, double width) = AppStyle.screenSize(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: selection
            ? AppColor.primaryColor
            : Theme.of(context).colorScheme.onInverseSurface,
        surfaceTintColor: Theme.of(context).colorScheme.onInverseSurface,
        elevation: 5,
        fixedSize: Size(width * .3, 0),
        padding: const EdgeInsets.all(0),
      ),
      onPressed: fun,
      child: Text(
        titleButton,
        style: TextStyle(
          fontSize: 20,
          color: selection
              ? AppColor.onPrimaryColor
              : Theme.of(context).colorScheme.secondary,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class RowSelectionButton extends StatelessWidget {
  const RowSelectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    final StoreHome storeHome = Provider.of<StoreHome>(context, listen: false);
    final ConfigData dataProduct =
        Provider.of<ConfigData>(context, listen: false);
    return Observer(
      builder: (_) => Row(
        children: [
          SelectionButton(
            selection: 0 == storeHome.takeIndexPage,
            titleButton: "Vestidos",
            fun: () {
              storeHome.updateIndex(0);
              dataProduct.selectingListProduct(Selection.vestidos);
            },
          ),
          AppStyle.space(top: 20),
          SelectionButton(
            selection: 1 == storeHome.takeIndexPage,
            titleButton: "Blusas",
            fun: () {
              storeHome.updateIndex(1);
              dataProduct.selectingListProduct(Selection.blusas);
            },
          ),
          AppStyle.space(top: 20),
          SelectionButton(
            selection: 2 == storeHome.takeIndexPage,
            titleButton: "Saias",
            fun: () {
              storeHome.updateIndex(2);
              dataProduct.selectingListProduct(Selection.saias);
            },
          ),
          AppStyle.space(top: 20),
          SelectionButton(
            selection: 3 == storeHome.takeIndexPage,
            titleButton: "Bolsas",
            fun: () {
              storeHome.updateIndex(3);
              dataProduct.selectingListProduct(Selection.bolsas);
            },
          ),
        ],
      ),
    );
  }
}
