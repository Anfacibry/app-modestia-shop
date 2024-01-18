import 'package:app_fashion_shop/store/models/store_product.dart';
import 'package:mobx/mobx.dart';

part 'product_car.g.dart';

// ignore: library_private_types_in_public_api
class ProductCar = _ProductCar with _$ProductCar;

abstract class _ProductCar with Store {
  @observable
  Product product;

  @observable
  int amount;

  _ProductCar({required this.product, required this.amount});
}
