import 'package:mobx/mobx.dart';

part 'store_home.g.dart';

// ignore: library_private_types_in_public_api
class StoreHome = _StoreHome with _$StoreHome;

enum Selecao { vestidos, blusas, saias, bolsas }

enum IconeSelecionado { home, favorito, carrinho, perfil }

abstract class _StoreHome with Store {
  @observable
  bool selecaoVestidos = true;
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

  @observable
  int indice = 0;

  @action
  void indicePego(int valor) {
    indice = valor;
  }

  @observable
  bool home = true;
  @observable
  bool favorito = false;
  @observable
  bool carrinho = false;
  @observable
  bool perfil = false;

  @action
  void selecionandoIcone(IconeSelecionado iconePego) {
    if (IconeSelecionado.home == iconePego) {
      home = true;
      favorito = false;
      carrinho = false;
      perfil = false;
    } else if (IconeSelecionado.favorito == iconePego) {
      home = false;
      favorito = true;
      carrinho = false;
      perfil = false;
    } else if (IconeSelecionado.carrinho == iconePego) {
      home = false;
      favorito = false;
      carrinho = true;
      perfil = false;
    } else if (IconeSelecionado.perfil == iconePego) {
      home = false;
      favorito = false;
      carrinho = false;
      perfil = true;
    }
  }

  @observable
  bool caixaDeTextoAtivada = false;

  @action
  void ativandoCaixaDeTexto() {
    caixaDeTextoAtivada = !caixaDeTextoAtivada;
  }
}
