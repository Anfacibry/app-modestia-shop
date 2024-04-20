// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConfigData on _ConfigData, Store {
  Computed<ObservableMap<Selection, List<Product>>>? _$listProductComputed;

  @override
  ObservableMap<Selection, List<Product>> get listProduct =>
      (_$listProductComputed ??=
              Computed<ObservableMap<Selection, List<Product>>>(
                  () => super.listProduct,
                  name: '_ConfigData.listProduct'))
          .value;
  Computed<ObservableList<ProductCar>>? _$listProductCarComputed;

  @override
  ObservableList<ProductCar> get listProductCar => (_$listProductCarComputed ??=
          Computed<ObservableList<ProductCar>>(() => super.listProductCar,
              name: '_ConfigData.listProductCar'))
      .value;
  Computed<bool>? _$isEmptyCartComputed;

  @override
  bool get isEmptyCart =>
      (_$isEmptyCartComputed ??= Computed<bool>(() => super.isEmptyCart,
              name: '_ConfigData.isEmptyCart'))
          .value;
  Computed<int>? _$sizeListProductCarComputed;

  @override
  int get sizeListProductCar => (_$sizeListProductCarComputed ??= Computed<int>(
          () => super.sizeListProductCar,
          name: '_ConfigData.sizeListProductCar'))
      .value;
  Computed<double>? _$valueTotalProductCarComputed;

  @override
  double get valueTotalProductCar => (_$valueTotalProductCarComputed ??=
          Computed<double>(() => super.valueTotalProductCar,
              name: '_ConfigData.valueTotalProductCar'))
      .value;
  Computed<double>? _$assessmentAverageComputed;

  @override
  double get assessmentAverage => (_$assessmentAverageComputed ??=
          Computed<double>(() => super.assessmentAverage,
              name: '_ConfigData.assessmentAverage'))
      .value;
  Computed<ObservableList<Product>>? _$listProductSelectionComputed;

  @override
  ObservableList<Product> get listProductSelection =>
      (_$listProductSelectionComputed ??= Computed<ObservableList<Product>>(
              () => super.listProductSelection,
              name: '_ConfigData.listProductSelection'))
          .value;
  Computed<int>? _$sizeListComputed;

  @override
  int get sizeList => (_$sizeListComputed ??=
          Computed<int>(() => super.sizeList, name: '_ConfigData.sizeList'))
      .value;
  Computed<ObservableList<Product>>? _$listProductFavoriteComputed;

  @override
  ObservableList<Product> get listProductFavorite =>
      (_$listProductFavoriteComputed ??= Computed<ObservableList<Product>>(
              () => super.listProductFavorite,
              name: '_ConfigData.listProductFavorite'))
          .value;
  Computed<ObservableList<Product>>? _$bestSellersComputed;

  @override
  ObservableList<Product> get bestSellers => (_$bestSellersComputed ??=
          Computed<ObservableList<Product>>(() => super.bestSellers,
              name: '_ConfigData.bestSellers'))
      .value;

  late final _$productAtom =
      Atom(name: '_ConfigData.product', context: context);

  @override
  Product? get product {
    _$productAtom.reportRead();
    return super.product;
  }

  @override
  set product(Product? value) {
    _$productAtom.reportWrite(value, super.product, () {
      super.product = value;
    });
  }

  late final _$indexImageProductAtom =
      Atom(name: '_ConfigData.indexImageProduct', context: context);

  @override
  int get indexImageProduct {
    _$indexImageProductAtom.reportRead();
    return super.indexImageProduct;
  }

  @override
  set indexImageProduct(int value) {
    _$indexImageProductAtom.reportWrite(value, super.indexImageProduct, () {
      super.indexImageProduct = value;
    });
  }

  late final _$productColorTackAtom =
      Atom(name: '_ConfigData.productColorTack', context: context);

  @override
  int get productColorTack {
    _$productColorTackAtom.reportRead();
    return super.productColorTack;
  }

  @override
  set productColorTack(int value) {
    _$productColorTackAtom.reportWrite(value, super.productColorTack, () {
      super.productColorTack = value;
    });
  }

  late final _$isShimmerAtom =
      Atom(name: '_ConfigData.isShimmer', context: context);

  @override
  bool get isShimmer {
    _$isShimmerAtom.reportRead();
    return super.isShimmer;
  }

  @override
  set isShimmer(bool value) {
    _$isShimmerAtom.reportWrite(value, super.isShimmer, () {
      super.isShimmer = value;
    });
  }

  late final _$valuationAtom =
      Atom(name: '_ConfigData.valuation', context: context);

  @override
  int get valuation {
    _$valuationAtom.reportRead();
    return super.valuation;
  }

  @override
  set valuation(int value) {
    _$valuationAtom.reportWrite(value, super.valuation, () {
      super.valuation = value;
    });
  }

  late final _$valueTotalProductDiscountCartAtom =
      Atom(name: '_ConfigData.valueTotalProductDiscountCart', context: context);

  @override
  double get valueTotalProductDiscountCart {
    _$valueTotalProductDiscountCartAtom.reportRead();
    return super.valueTotalProductDiscountCart;
  }

  @override
  set valueTotalProductDiscountCart(double value) {
    _$valueTotalProductDiscountCartAtom
        .reportWrite(value, super.valueTotalProductDiscountCart, () {
      super.valueTotalProductDiscountCart = value;
    });
  }

  late final _$discountAtom =
      Atom(name: '_ConfigData.discount', context: context);

  @override
  double get discount {
    _$discountAtom.reportRead();
    return super.discount;
  }

  @override
  set discount(double value) {
    _$discountAtom.reportWrite(value, super.discount, () {
      super.discount = value;
    });
  }

  late final _$nameCupomAtom =
      Atom(name: '_ConfigData.nameCupom', context: context);

  @override
  String get nameCupom {
    _$nameCupomAtom.reportRead();
    return super.nameCupom;
  }

  @override
  set nameCupom(String value) {
    _$nameCupomAtom.reportWrite(value, super.nameCupom, () {
      super.nameCupom = value;
    });
  }

  late final _$nameCupomTextControllerAtom =
      Atom(name: '_ConfigData.nameCupomTextController', context: context);

  @override
  String get nameCupomTextController {
    _$nameCupomTextControllerAtom.reportRead();
    return super.nameCupomTextController;
  }

  @override
  set nameCupomTextController(String value) {
    _$nameCupomTextControllerAtom
        .reportWrite(value, super.nameCupomTextController, () {
      super.nameCupomTextController = value;
    });
  }

  late final _$selectionTakeAtom =
      Atom(name: '_ConfigData.selectionTake', context: context);

  @override
  Selection get selectionTake {
    _$selectionTakeAtom.reportRead();
    return super.selectionTake;
  }

  @override
  set selectionTake(Selection value) {
    _$selectionTakeAtom.reportWrite(value, super.selectionTake, () {
      super.selectionTake = value;
    });
  }

  late final _$searchControllerAtom =
      Atom(name: '_ConfigData.searchController', context: context);

  @override
  String get searchController {
    _$searchControllerAtom.reportRead();
    return super.searchController;
  }

  @override
  set searchController(String value) {
    _$searchControllerAtom.reportWrite(value, super.searchController, () {
      super.searchController = value;
    });
  }

  late final _$initScroolAtom =
      Atom(name: '_ConfigData.initScrool', context: context);

  @override
  double get initScrool {
    _$initScroolAtom.reportRead();
    return super.initScrool;
  }

  @override
  set initScrool(double value) {
    _$initScroolAtom.reportWrite(value, super.initScrool, () {
      super.initScrool = value;
    });
  }

  late final _$positionTakeAtom =
      Atom(name: '_ConfigData.positionTake', context: context);

  @override
  double get positionTake {
    _$positionTakeAtom.reportRead();
    return super.positionTake;
  }

  @override
  set positionTake(double value) {
    _$positionTakeAtom.reportWrite(value, super.positionTake, () {
      super.positionTake = value;
    });
  }

  late final _$_ConfigDataActionController =
      ActionController(name: '_ConfigData', context: context);

  @override
  void pagControllerImage({required int index}) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.pagControllerImage');
    try {
      return super.pagControllerImage(index: index);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setInitScrool() {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.setInitScrool');
    try {
      return super.setInitScrool();
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPosition(double position) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.setPosition');
    try {
      return super.setPosition(position);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changingProductImageIndex(int indexImage) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.changingProductImageIndex');
    try {
      return super.changingProductImageIndex(indexImage);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addMoreProduct(ProductCar productCar) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.addMoreProduct');
    try {
      return super.addMoreProduct(productCar);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void removeProductCar({required ProductCar productCar, required int index}) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.removeProductCar');
    try {
      return super.removeProductCar(productCar: productCar, index: index);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectingListProduct(Selection selection) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.selectingListProduct');
    try {
      return super.selectingListProduct(selection);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getProduct({required Product product}) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.getProduct');
    try {
      return super.getProduct(product: product);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addFavorite(String id) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.addFavorite');
    try {
      return super.addFavorite(id);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void tackProductColor(int productColor) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.tackProductColor');
    try {
      return super.tackProductColor(productColor);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addValuationProduct({required Product product, required int valuation}) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.addValuationProduct');
    try {
      return super.addValuationProduct(product: product, valuation: valuation);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void isShimmerMod() {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.isShimmerMod');
    try {
      return super.isShimmerMod();
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void tackValuationAssessment(int value) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.tackValuationAssessment');
    try {
      return super.tackValuationAssessment(value);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void tackNameCupom(String nameCupom) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.tackNameCupom');
    try {
      return super.tackNameCupom(nameCupom);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearNameCupomTextController() {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.clearNameCupomTextController');
    try {
      return super.clearNameCupomTextController();
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void valueTotalDiscountTack() {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.valueTotalDiscountTack');
    try {
      return super.valueTotalDiscountTack();
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void searchControllerTack(String controller) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.searchControllerTack');
    try {
      return super.searchControllerTack(controller);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
product: ${product},
indexImageProduct: ${indexImageProduct},
productColorTack: ${productColorTack},
isShimmer: ${isShimmer},
valuation: ${valuation},
valueTotalProductDiscountCart: ${valueTotalProductDiscountCart},
discount: ${discount},
nameCupom: ${nameCupom},
nameCupomTextController: ${nameCupomTextController},
selectionTake: ${selectionTake},
searchController: ${searchController},
initScrool: ${initScrool},
positionTake: ${positionTake},
listProduct: ${listProduct},
listProductCar: ${listProductCar},
isEmptyCart: ${isEmptyCart},
sizeListProductCar: ${sizeListProductCar},
valueTotalProductCar: ${valueTotalProductCar},
assessmentAverage: ${assessmentAverage},
listProductSelection: ${listProductSelection},
sizeList: ${sizeList},
listProductFavorite: ${listProductFavorite},
bestSellers: ${bestSellers}
    ''';
  }
}
