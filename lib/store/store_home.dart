import 'package:app_fashion_shop/store/data/data_product.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'store_home.g.dart';

// ignore: library_private_types_in_public_api
class StoreHome = _StoreHome with _$StoreHome;

enum Selection { vestidos, blusas, saias, bolsas }

abstract class _StoreHome with Store {
  DataProduct product = DataProduct();
  ScrollController controllerPage = ScrollController();

  @observable
  int takeIndexPage = 0;

  @observable
  double keyboard = 0.0;

  @action
  void tackKeyboard(double value) {
    keyboard = value;
  }

  @action
  void updateIndex(int index) {
    takeIndexPage = index;
    if (index <= 1) {
      controllerPage.animateTo(
        index * 0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    } else {
      controllerPage.animateTo(
        index * 80,
        duration: const Duration(milliseconds: 500),
        curve: Curves.linear,
      );
    }
  }

  @observable
  int index = 0;
  @computed
  String get imageAnnouncement => product.listImage[index]["image"]!;

  @action
  void getIndex(int value) {
    index = value;
  }

  @observable
  int indexIconNavigator = 0;

  @action
  void getIndexIconNavigator(int value) {
    indexIconNavigator = value;
  }

  @observable
  bool isHome = false;

  @action
  void setIsHome(bool isHome) {
    this.isHome = isHome;
  }
}
