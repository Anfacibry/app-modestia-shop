import 'package:app_fashion_shop/store/models/image_color.dart';
import 'package:mobx/mobx.dart';

part 'store_product.g.dart';

// ignore: library_private_types_in_public_api
class Product = _Product with _$Product;

abstract class _Product with Store {
  @observable
  String id;

  @observable
  String name;

  @observable
  double price;

  @observable
  ObservableList<ImageColor> imageColor;

  @observable
  ObservableList<String> size;

  @observable
  double valuation;

  @observable
  bool isFavorite;
  _Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageColor,
    required this.size,
    required this.valuation,
    required this.isFavorite,
  });
}
