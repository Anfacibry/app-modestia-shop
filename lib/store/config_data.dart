import 'package:app_fashion_shop/store/data/storage_product.dart';
import 'package:app_fashion_shop/store/models/product_car.dart';
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
  final pagController = PageController();

  @observable
  bool isShimmer = true;

  @action
  void isShimmerMod() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => isShimmer = !isShimmer);
  }

  Map<Selection, List<Product>> get listProduct => dataProduct.mapListProduct;

  @action
  void pagControllerImage({required int index}) {
    pagController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.linear);
  }

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
  bool get isEmptyCart => listProductCar.isNotEmpty;

  @computed
  int get sizeListProductCar => listProductCar.length;

  @observable
  ObservableList<ProductCar> listProductCar = ObservableList();

  @observable
  int productColorTack = 0;

  @action
  void tackProductColor(int productColor) {
    productColorTack = productColor;
  }

  @action
  void addProductCart(Product product) {
    bool idIdentified = true;
    int index = 0;
    for (int i = 0; i < listProductCar.length; i++) {
      if (listProductCar[i].product.id == product.id) {
        idIdentified = false;
        index = i;
      }
    }
    if (idIdentified) {
      Product updateProduct = Product(
        id: product.id,
        name: product.name,
        price: product.price,
        imageColor: ObservableList.of([
          ImageColor(
            name: product.imageColor[indexImageProduct].name,
            color: product.imageColor[indexImageProduct].color,
            image: product.imageColor[indexImageProduct].image,
          )
        ]),
        size: ObservableList.of([""]),
        tackSize: product.tackSize,
        valuation: product.valuation,
        isFavorite: product.isFavorite,
      );
      listProductCar.add(ProductCar(product: updateProduct, amount: 1));
    } else {
      listProductCar[index].amount++;
      listProductCar[index].product.tackSize = product.tackSize;
    }
  }

  @action
  void addProductMore(ProductCar productCar) {
    productCar.amount++;
  }

  @action
  void removeProduct({required ProductCar productCar, required int index}) {
    if (productCar.amount > 1) {
      productCar.amount--;
    } else {
      listProductCar.remove(productCar);
    }
  }

  @observable
  Selection selectionTake = Selection.vestidos;

  @computed
  int get sizeList => dataProduct.mapListProduct[selectionTake]!.length;

  @computed
  List<Product> get listProductSelection =>
      dataProduct.mapListProduct[selectionTake]!;

  @observable
  String searchController = "";

  @action
  void searchControllerTack(String controller) {
    searchController = controller;
  }

  @computed
  ObservableList<Product> get searchList => searchController == ""
      ? ObservableList()
      : ObservableList.of(dataProduct.mapListProduct.values
          .reduce((value, element) => value + element)
          .where((element) => element.name
              .toLowerCase()
              .contains(searchController.toLowerCase())));

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

  @observable
  int indexImageProduct = 0;

  @action
  void changingProductImageIndex(int indexImage) {
    indexImageProduct = indexImage;
  }

  @observable
  double positionTake = 0.0;
  @action
  void setPosition(double position) {
    positionTake = position;
  }
}
