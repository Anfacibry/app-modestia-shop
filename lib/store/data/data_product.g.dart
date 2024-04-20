// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_product.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DataProduct on _DataProduct, Store {
  late final _$listImageAtom =
      Atom(name: '_DataProduct.listImage', context: context);

  @override
  ObservableList<Map<String, String>> get listImage {
    _$listImageAtom.reportRead();
    return super.listImage;
  }

  @override
  set listImage(ObservableList<Map<String, String>> value) {
    _$listImageAtom.reportWrite(value, super.listImage, () {
      super.listImage = value;
    });
  }

  late final _$listProductCarAtom =
      Atom(name: '_DataProduct.listProductCar', context: context);

  @override
  ObservableList<ProductCar> get listProductCar {
    _$listProductCarAtom.reportRead();
    return super.listProductCar;
  }

  @override
  set listProductCar(ObservableList<ProductCar> value) {
    _$listProductCarAtom.reportWrite(value, super.listProductCar, () {
      super.listProductCar = value;
    });
  }

  late final _$mapListProductAtom =
      Atom(name: '_DataProduct.mapListProduct', context: context);

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

  @override
  String toString() {
    return '''
listImage: ${listImage},
listProductCar: ${listProductCar},
mapListProduct: ${mapListProduct}
    ''';
  }
}
