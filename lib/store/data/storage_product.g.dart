// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_product.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StorageProduct on _StorageProduct, Store {
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

  @override
  String toString() {
    return '''
mapListProduct: ${mapListProduct}
    ''';
  }
}
