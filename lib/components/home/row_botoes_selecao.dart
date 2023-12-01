import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import '../../store/data/storage_product.dart';
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
    final StorageProduct storageProduct =
        Provider.of<StorageProduct>(context, listen: false);
    return Observer(
      builder: (_) => Row(
        children: [
          SelectionButton(
            selection: storeHome.selectionVestidos,
            titleButton: "Vestidos",
            fun: () {
              storeHome.selecionandoAba(Selection.vestidos);
              storageProduct.selectingListProduct(Selection.vestidos);
            },
          ),
          AppStyle.space(top: 20),
          SelectionButton(
            selection: storeHome.selectionBlusa,
            titleButton: "Blusas",
            fun: () {
              storeHome.selecionandoAba(Selection.blusas);
              storageProduct.selectingListProduct(Selection.blusas);
            },
          ),
          AppStyle.space(top: 20),
          SelectionButton(
            selection: storeHome.selectionSaias,
            titleButton: "Saias",
            fun: () {
              storeHome.selecionandoAba(Selection.saias);
              storageProduct.selectingListProduct(Selection.saias);
            },
          ),
          AppStyle.space(top: 20),
          SelectionButton(
            selection: storeHome.selectionBolsas,
            titleButton: "Bolsas",
            fun: () {
              storeHome.selecionandoAba(Selection.bolsas);
              storageProduct.selectingListProduct(Selection.bolsas);
            },
          ),
        ],
      ),
    );
  }
}
