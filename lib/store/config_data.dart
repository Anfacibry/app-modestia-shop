import 'package:app_fashion_shop/store/data/data_product.dart';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import 'models/image_color.dart';
import 'models/product_car.dart';
import 'models/store_product.dart';
import 'store_home.dart';

part 'config_data.g.dart';

// ignore: library_private_types_in_public_api
class ConfigData = _ConfigData with _$ConfigData;

abstract class _ConfigData with Store {
  DataProduct dataProduct = DataProduct();
  final controller = ScrollController();
  final pagController = PageController();

  @observable
  Product? product;

  @observable
  int indexImageProduct = 0;

  @observable
  int productColorTack = 0;

  //É Brilho
  @observable
  bool isShimmer = false;

  //Avaliação
  @observable
  int valuation = 0;

  //valor Total do carrinho de desconto do produto
  @observable
  double valueTotalProductDiscountCart = 0.0;

  //Desconto
  @observable
  double discount = 0.0;

  //Nome cupom
  @observable
  String nameCupom = "";

  @observable
  String nameCupomTextController = "";

  @observable
  Selection selectionTake = Selection.vestidos;

  @observable
  String searchController = "";

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

  @observable
  double positionTake = 0.0;
  @action
  void setPosition(double position) {
    positionTake = position;
  }

  @action
  void changingProductImageIndex(int indexImage) {
    indexImageProduct = indexImage;
  }

  ///Adicionar mais produtos
  @action
  void addMoreProduct(ProductCar productCar) {
    productCar.amount++;
  }

  @action
  void removeProductCar({required ProductCar productCar, required int index}) {
    if (productCar.amount > 1) {
      productCar.amount--;
    } else {
      listProductCar.remove(productCar);
    }
  }

  @action
  void selectingListProduct(Selection selection) {
    selectionTake = selection;
  }

  void tackSizeProduct({
    required String size,
    required Product product,
  }) {
    product.tackSize = size;
  }

  void addProductCart(Product product) {
    bool idIdentified = false;
    int index = 0;

    for (int i = 0; i < listProductCar.length; i++) {
      if (listProductCar[i].product.id == product.id &&
          listProductCar[i].product.tackSize == product.tackSize) {
        idIdentified = true;
        index = i;
      }
    }
    if (idIdentified) {
      listProductCar[index].amount++;
      listProductCar[index].product.tackSize = product.tackSize;
    } else {
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
    }
  }

  ///Pegando o produto
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

  ///Serviços

  @computed
  ObservableMap<Selection, List<Product>> get listProduct =>
      ObservableMap.of(dataProduct.mapListProduct);

  @computed
  ObservableList<ProductCar> get listProductCar => dataProduct.listProductCar;

  @computed
  bool get isEmptyCart => dataProduct.listProductCar.isNotEmpty;

  @computed
  int get sizeListProductCar => dataProduct.listProductCar.length;

  @computed
  double get valueTotalProductCar => dataProduct.listProductCar
      .map((element) => element.product.price * element.amount)
      .reduce((value, element) => value + element);

  //Avaliação média
  @computed
  double get assessmentAverage {
    int valueAssessment = 0;
    for (var assessment in product!.valuation) {
      valueAssessment += assessment;
    }
    double average = valueAssessment / product!.valuation.length;
    return average;
  }

  ///

  @computed
  ObservableList<Product> get listProductSelection =>
      ObservableList.of(dataProduct.mapListProduct[selectionTake]!);

  @computed
  int get sizeList => dataProduct.mapListProduct[selectionTake]!.length;
  ObservableList<Product> get searchList => searchController == ""
      ? ObservableList()
      : ObservableList.of(dataProduct.mapListProduct.values
          .reduce((value, element) => value + element)
          .where((element) => element.name
              .toLowerCase()
              .contains(searchController.toLowerCase()))
          .toList());

  @computed
  ObservableList<Product> get listProductFavorite =>
      ObservableList.of(dataProduct.mapListProduct.values
          .reduce((value, element) => value + element)
          .where((element) => element.isFavorite)
          .toList());

  @computed
  ObservableList<Product> get bestSellers =>
      ObservableList.of(dataProduct.mapListProduct.values.last);

  @action
  void tackProductColor(int productColor) {
    productColorTack = productColor;
  }

  ///Adicionar a avaliação do produto
  @action
  void addValuationProduct({required Product product, required int valuation}) {
    product.valuation.add(valuation);
  }

  @action
  void isShimmerMod() {
    Future.delayed(const Duration(seconds: 3))
        .then((value) => isShimmer = !isShimmer);
  }

  @action
  void tackValuationAssessment(int value) {
    valuation = value;
  }

  @action
  void tackNameCupom(String nameCupom) {
    this.nameCupom = nameCupom;
    nameCupomTextController = nameCupom;
  }

  @action
  void clearNameCupomTextController() {
    nameCupomTextController = "";
  }

  @action
  void valueTotalDiscountTack() {
    for (var cupomTack in dataProduct.listCupom) {
      if (cupomTack.cupom == nameCupom) {
        discount = (valueTotalProductCar * cupomTack.discount) / 100;
        valueTotalProductDiscountCart = valueTotalProductCar - discount;
        break;
      } else {
        valueTotalProductDiscountCart = valueTotalProductCar;
        discount = 0.0;
      }
    }
  }

  @action
  void searchControllerTack(String controller) {
    searchController = controller;
  }
}
