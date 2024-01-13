import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../config/style/app_style.dart';

part 'store_home.g.dart';

// ignore: library_private_types_in_public_api
class StoreHome = _StoreHome with _$StoreHome;

enum Selection { vestidos, blusas, saias, bolsas }

enum IconSelection { home, favorito, carrinho, perfil }

abstract class _StoreHome with Store {
  ScrollController controllerPage = ScrollController();

  @observable
  int takeIndexPage = 0;

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
  ObservableList<Map<String, String>> listImage = ObservableList.of([
    {
      "url": "",
      "image": AppStyle.imageAnnouncement001,
    },
    {
      "url": "",
      "image": AppStyle.imageAnnouncement002,
    },
    {
      "url": "https://guiadoiphone.com.br/",
      "image": AppStyle.imageAnnouncement003,
    },
    {
      "url": "",
      "image": AppStyle.imageAnnouncement004,
    }
  ]);

  @observable
  int index = 0;
  @computed
  String get imageAnnouncement => listImage[index]["image"]!;

  @action
  void getIndex(int value) {
    index = value;
  }

  @observable
  bool home = true;
  @observable
  bool favorite = false;
  @observable
  bool cart = false;
  @observable
  bool profile = false;

  @action
  void selectingIcon(IconSelection getIcon) {
    if (IconSelection.home == getIcon) {
      home = true;
      favorite = false;
      cart = false;
      profile = false;
    } else if (IconSelection.favorito == getIcon) {
      home = false;
      favorite = true;
      cart = false;
      profile = false;
    } else if (IconSelection.carrinho == getIcon) {
      home = false;
      favorite = false;
      cart = true;
      profile = false;
    } else if (IconSelection.perfil == getIcon) {
      home = false;
      favorite = false;
      cart = false;
      profile = true;
    }
  }
}
