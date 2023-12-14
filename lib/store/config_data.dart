import 'package:app_fashion_shop/store/data/storage_product.dart';
import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import 'models/image_color.dart';
import 'models/store_product.dart';

part 'config_data.g.dart';

// ignore: library_private_types_in_public_api
class ConfigData = _ConfigData with _$ConfigData;

abstract class _ConfigData with Store {
  StorageProduct dataProduct = StorageProduct();
  final controller = ScrollController();

  @observable
  double initScrool = 0.0;

  @action
  void setInitScrool() {
    controller.animateTo(
      initScrool,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeIn,
    );
  }

  @computed
  bool get isEmptyCart => cartProduct.isNotEmpty;

  @observable
  ObservableList<Product> cartProduct = ObservableList();

  @observable
  Color? productColorTack;

  @action
  void tackProductColor(Color productColor) {
    productColorTack = productColor;
  }

  @action
  void addProductCart(Product product) {
    Product updateProduct = Product(
      id: product.id,
      name: product.name,
      price: product.price,
      imageColor: ObservableList.of([
        ImageColor(
          name: product.imageColor[indexProduct].name,
          color: productColorTack ?? product.imageColor[indexProduct].color,
          image: product.imageColor[indexProduct].image,
        )
      ]),
      size: ObservableList.of([""]),
      tackSize: "",
      valuation: product.valuation,
      isFavorite: product.isFavorite,
    );
    cartProduct.add(updateProduct);
  }

  @observable
  Selection selectionTake = Selection.vestidos;

  @computed
  int get sizeList => dataProduct.mapListProduct[selectionTake]!.length;

  @computed
  List<Product> get listProductSelection =>
      dataProduct.mapListProduct[selectionTake]!;

  @computed
  ObservableList<Product> get listProductFavorite =>
      ObservableList.of(dataProduct.mapListProduct.values
          .reduce((value, element) => value + element)
          .where((element) => element.isFavorite));

  @computed
  ObservableList<Product> get bestSellers =>
      ObservableList.of(dataProduct.mapListProduct.values.last);

  void tackSizeProduct({
    required String size,
    required Product product,
  }) {
    product.tackSize = size;
  }

  @action
  void selectingListProduct(Selection selection) {
    selectionTake = selection;
  }

  @observable
  int indexProduct = 0;

  @observable
  Product? product;

  @action
  void getProduct({required Product product}) {
    this.product = product;
  }

  @action
  void addFavorite(String id) {
    if (id == product!.id) {
      product!.isFavorite = !product!.isFavorite;
    }
  }

  @action
  void changingProductImageIndex(int index) {
    indexProduct = index;
  }

  @observable
  double positionTake = 0.0;
  @action
  void setPosition(double position) {
    positionTake = position;
  }
}
