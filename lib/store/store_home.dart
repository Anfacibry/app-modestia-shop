import 'package:mobx/mobx.dart';

part 'store_home.g.dart';

// ignore: library_private_types_in_public_api
class StoreHome = _StoreHome with _$StoreHome;

enum Selecao { vestidos, blusas, saias, bolsas }

abstract class _StoreHome with Store {
  @observable
  bool selecaoVestidos = false;
  @observable
  bool selecaoBlusa = false;
  @observable
  bool selecaoSaias = false;
  @observable
  bool selecaoBolsas = false;

  @action
  void selecionandoAba(Selecao selecaoPega) {
    if (Selecao.vestidos == selecaoPega) {
      selecaoVestidos = true;
      selecaoBlusa = false;
      selecaoSaias = false;
      selecaoBolsas = false;
    } else if (Selecao.blusas == selecaoPega) {
      selecaoVestidos = false;
      selecaoBlusa = true;
      selecaoSaias = false;
      selecaoBolsas = false;
    } else if (Selecao.saias == selecaoPega) {
      selecaoVestidos = false;
      selecaoBlusa = false;
      selecaoSaias = true;
      selecaoBolsas = false;
    } else if (Selecao.bolsas == selecaoPega) {
      selecaoVestidos = false;
      selecaoBlusa = false;
      selecaoSaias = false;
      selecaoBolsas = true;
    }
  }
}
