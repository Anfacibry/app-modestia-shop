// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'config_data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConfigData on _ConfigData, Store {
  Computed<bool>? _$isEmptyCartComputed;

  @override
  bool get isEmptyCart =>
      (_$isEmptyCartComputed ??= Computed<bool>(() => super.isEmptyCart,
              name: '_ConfigData.isEmptyCart'))
          .value;
  Computed<int>? _$sizeListComputed;

  @override
  int get sizeList => (_$sizeListComputed ??=
          Computed<int>(() => super.sizeList, name: '_ConfigData.sizeList'))
      .value;
  Computed<List<Product>>? _$listProductSelectionComputed;

  @override
  List<Product> get listProductSelection => (_$listProductSelectionComputed ??=
          Computed<List<Product>>(() => super.listProductSelection,
              name: '_ConfigData.listProductSelection'))
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

  late final _$cartProductAtom =
      Atom(name: '_ConfigData.cartProduct', context: context);

  @override
  ObservableList<Product> get cartProduct {
    _$cartProductAtom.reportRead();
    return super.cartProduct;
  }

  @override
  set cartProduct(ObservableList<Product> value) {
    _$cartProductAtom.reportWrite(value, super.cartProduct, () {
      super.cartProduct = value;
    });
  }

  late final _$productColorTackAtom =
      Atom(name: '_ConfigData.productColorTack', context: context);

  @override
  Color? get productColorTack {
    _$productColorTackAtom.reportRead();
    return super.productColorTack;
  }

  @override
  set productColorTack(Color? value) {
    _$productColorTackAtom.reportWrite(value, super.productColorTack, () {
      super.productColorTack = value;
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

  late final _$indexProductAtom =
      Atom(name: '_ConfigData.indexProduct', context: context);

  @override
  int get indexProduct {
    _$indexProductAtom.reportRead();
    return super.indexProduct;
  }

  @override
  set indexProduct(int value) {
    _$indexProductAtom.reportWrite(value, super.indexProduct, () {
      super.indexProduct = value;
    });
  }

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
  void tackProductColor(Color productColor) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.tackProductColor');
    try {
      return super.tackProductColor(productColor);
    } finally {
      _$_ConfigDataActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addProductCart(Product product) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.addProductCart');
    try {
      return super.addProductCart(product);
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
  void changingProductImageIndex(int index) {
    final _$actionInfo = _$_ConfigDataActionController.startAction(
        name: '_ConfigData.changingProductImageIndex');
    try {
      return super.changingProductImageIndex(index);
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
  String toString() {
    return '''
initScrool: ${initScrool},
cartProduct: ${cartProduct},
productColorTack: ${productColorTack},
selectionTake: ${selectionTake},
indexProduct: ${indexProduct},
product: ${product},
positionTake: ${positionTake},
isEmptyCart: ${isEmptyCart},
sizeList: ${sizeList},
listProductSelection: ${listProductSelection},
listProductFavorite: ${listProductFavorite},
bestSellers: ${bestSellers}
    ''';
  }
}
