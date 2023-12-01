import 'package:mobx/mobx.dart';

import '../config/style/app_style.dart';

part 'store_home.g.dart';

// ignore: library_private_types_in_public_api
class StoreHome = _StoreHome with _$StoreHome;

enum Selection { vestidos, blusas, saias, bolsas }

enum IconSelection { home, favorito, carrinho, perfil }

abstract class _StoreHome with Store {
  @observable
  bool selectionVestidos = true;
  @observable
  bool selectionBlusa = false;
  @observable
  bool selectionSaias = false;
  @observable
  bool selectionBolsas = false;

  @action
  void selecionandoAba(Selection selectionPega) {
    if (Selection.vestidos == selectionPega) {
      selectionVestidos = true;
      selectionBlusa = false;
      selectionSaias = false;
      selectionBolsas = false;
    } else if (Selection.blusas == selectionPega) {
      selectionVestidos = false;
      selectionBlusa = true;
      selectionSaias = false;
      selectionBolsas = false;
    } else if (Selection.saias == selectionPega) {
      selectionVestidos = false;
      selectionBlusa = false;
      selectionSaias = true;
      selectionBolsas = false;
    } else if (Selection.bolsas == selectionPega) {
      selectionVestidos = false;
      selectionBlusa = false;
      selectionSaias = false;
      selectionBolsas = true;
    }
  }

  @observable
  ObservableList<String> listImage = ObservableList.of([
    AppStyle.imageAnnouncement001,
    AppStyle.imageAnnouncement002,
    AppStyle.imageAnnouncement003,
    AppStyle.imageAnnouncement004,
  ]);

  @observable
  int index = 0;
  @computed
  String get imageAnnouncement => listImage[index];

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
