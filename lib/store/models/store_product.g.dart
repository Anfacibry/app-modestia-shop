// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_product.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$Product on _Product, Store {
  late final _$idAtom = Atom(name: '_Product.id', context: context);

  @override
  String get id {
    _$idAtom.reportRead();
    return super.id;
  }

  @override
  set id(String value) {
    _$idAtom.reportWrite(value, super.id, () {
      super.id = value;
    });
  }

  late final _$nameAtom = Atom(name: '_Product.name', context: context);

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$priceAtom = Atom(name: '_Product.price', context: context);

  @override
  double get price {
    _$priceAtom.reportRead();
    return super.price;
  }

  @override
  set price(double value) {
    _$priceAtom.reportWrite(value, super.price, () {
      super.price = value;
    });
  }

  late final _$imageColorAtom =
      Atom(name: '_Product.imageColor', context: context);

  @override
  ObservableList<ImageColor> get imageColor {
    _$imageColorAtom.reportRead();
    return super.imageColor;
  }

  @override
  set imageColor(ObservableList<ImageColor> value) {
    _$imageColorAtom.reportWrite(value, super.imageColor, () {
      super.imageColor = value;
    });
  }

  late final _$sizeAtom = Atom(name: '_Product.size', context: context);

  @override
  ObservableList<String> get size {
    _$sizeAtom.reportRead();
    return super.size;
  }

  @override
  set size(ObservableList<String> value) {
    _$sizeAtom.reportWrite(value, super.size, () {
      super.size = value;
    });
  }

  late final _$tackSizeAtom = Atom(name: '_Product.tackSize', context: context);

  @override
  String get tackSize {
    _$tackSizeAtom.reportRead();
    return super.tackSize;
  }

  @override
  set tackSize(String value) {
    _$tackSizeAtom.reportWrite(value, super.tackSize, () {
      super.tackSize = value;
    });
  }

  late final _$valuationAtom =
      Atom(name: '_Product.valuation', context: context);

  @override
  ObservableList<int> get valuation {
    _$valuationAtom.reportRead();
    return super.valuation;
  }

  @override
  set valuation(ObservableList<int> value) {
    _$valuationAtom.reportWrite(value, super.valuation, () {
      super.valuation = value;
    });
  }

  late final _$isFavoriteAtom =
      Atom(name: '_Product.isFavorite', context: context);

  @override
  bool get isFavorite {
    _$isFavoriteAtom.reportRead();
    return super.isFavorite;
  }

  @override
  set isFavorite(bool value) {
    _$isFavoriteAtom.reportWrite(value, super.isFavorite, () {
      super.isFavorite = value;
    });
  }

  @override
  String toString() {
    return '''
id: ${id},
name: ${name},
price: ${price},
imageColor: ${imageColor},
size: ${size},
tackSize: ${tackSize},
valuation: ${valuation},
isFavorite: ${isFavorite}
    ''';
  }
}
