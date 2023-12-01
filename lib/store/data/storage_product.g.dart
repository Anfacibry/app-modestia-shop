// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_product.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StorageProduct on _StorageProduct, Store {
  Computed<bool>? _$isEmptyCartComputed;

  @override
  bool get isEmptyCart =>
      (_$isEmptyCartComputed ??= Computed<bool>(() => super.isEmptyCart,
              name: '_StorageProduct.isEmptyCart'))
          .value;
  Computed<int>? _$sizeListComputed;

  @override
  int get sizeList => (_$sizeListComputed ??=
          Computed<int>(() => super.sizeList, name: '_StorageProduct.sizeList'))
      .value;
  Computed<List<Product>>? _$listProductComputed;

  @override
  List<Product> get listProduct => (_$listProductComputed ??=
          Computed<List<Product>>(() => super.listProduct,
              name: '_StorageProduct.listProduct'))
      .value;

  late final _$mapListProductAtom =
      Atom(name: '_StorageProduct.mapListProduct', context: context);

  @override
  Map<Selection, List<Product>> get mapListProduct {
    _$mapListProductAtom.reportRead();
    return super.mapListProduct;
  }

  @override
  set mapListProduct(Map<Selection, List<Product>> value) {
    _$mapListProductAtom.reportWrite(value, super.mapListProduct, () {
      super.mapListProduct = value;
    });
  }

  late final _$cartProductAtom =
      Atom(name: '_StorageProduct.cartProduct', context: context);

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

  late final _$selectionTakeAtom =
      Atom(name: '_StorageProduct.selectionTake', context: context);

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
      Atom(name: '_StorageProduct.indexProduct', context: context);

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
      Atom(name: '_StorageProduct.product', context: context);

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
      Atom(name: '_StorageProduct.positionTake', context: context);

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

  late final _$_StorageProductActionController =
      ActionController(name: '_StorageProduct', context: context);

  @override
  void addProductCart(Product product) {
    final _$actionInfo = _$_StorageProductActionController.startAction(
        name: '_StorageProduct.addProductCart');
    try {
      return super.addProductCart(product);
    } finally {
      _$_StorageProductActionController.endAction(_$actionInfo);
    }
  }

  @override
  void selectingListProduct(Selection selection) {
    final _$actionInfo = _$_StorageProductActionController.startAction(
        name: '_StorageProduct.selectingListProduct');
    try {
      return super.selectingListProduct(selection);
    } finally {
      _$_StorageProductActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addFavorite(Product product) {
    final _$actionInfo = _$_StorageProductActionController.startAction(
        name: '_StorageProduct.addFavorite');
    try {
      return super.addFavorite(product);
    } finally {
      _$_StorageProductActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getProduct({required Product product}) {
    final _$actionInfo = _$_StorageProductActionController.startAction(
        name: '_StorageProduct.getProduct');
    try {
      return super.getProduct(product: product);
    } finally {
      _$_StorageProductActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changingProductImageIndex(int index) {
    final _$actionInfo = _$_StorageProductActionController.startAction(
        name: '_StorageProduct.changingProductImageIndex');
    try {
      return super.changingProductImageIndex(index);
    } finally {
      _$_StorageProductActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPosition(double position) {
    final _$actionInfo = _$_StorageProductActionController.startAction(
        name: '_StorageProduct.setPosition');
    try {
      return super.setPosition(position);
    } finally {
      _$_StorageProductActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
mapListProduct: ${mapListProduct},
cartProduct: ${cartProduct},
selectionTake: ${selectionTake},
indexProduct: ${indexProduct},
product: ${product},
positionTake: ${positionTake},
isEmptyCart: ${isEmptyCart},
sizeList: ${sizeList},
listProduct: ${listProduct}
    ''';
  }
}
