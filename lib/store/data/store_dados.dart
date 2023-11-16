import 'package:app_fashion_shop/store/store_home.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../models/cor_e_imagem.dart';
import '../models/store_produtos.dart';

part 'store_dados.g.dart';

// ignore: library_private_types_in_public_api
class Dados = _Dados with _$Dados;

abstract class _Dados with Store {
  @observable
  Map<Selecao, List<Produtos>> mapListaProdutos =
      ObservableMap<Selecao, List<Produtos>>.of(
    {
      Selecao.vestidos: [
        Produtos(
          id: "001",
          nome: "Bluende",
          preco: 99.90,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "azul",
                cor: const Color.fromARGB(255, 7, 54, 92),
                imagem: "assets/image/vestidos/bluende.jpg")
          ]),
          tamanho: ObservableList.of(["P", "PM", "M", "G", "GG"]),
          avaliacao: 4.5,
          isFavorito: false,
        ),
        Produtos(
          id: "002",
          nome: "Casual Med",
          preco: 150.50,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "roxo",
                cor: const Color.fromARGB(255, 101, 18, 116),
                imagem: "assets/image/vestidos/casualMed.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.8,
          isFavorito: false,
        ),
        Produtos(
          id: "003",
          nome: "Elegante",
          preco: 200,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "vermelho",
                cor: const Color.fromARGB(255, 129, 23, 16),
                imagem: "assets/image/vestidos/elegante.png")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.2,
          isFavorito: false,
        ),
        Produtos(
          id: "004",
          nome: "Lop",
          preco: 140,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "azul",
                cor: const Color.fromARGB(255, 7, 41, 94),
                imagem: "assets/image/vestidos/lop001.jpeg"),
            CorEImagem(
                nome: "verde",
                cor: Colors.green[900]!,
                imagem: "assets/image/vestidos/lop002.jpeg"),
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "005",
          nome: "Veste bin",
          preco: 80,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "azul marinho",
                cor: Colors.blue[100]!,
                imagem: "assets/image/vestidos/vestido02.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "006",
          nome: "Veste conde flor",
          preco: 80,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "verde",
                cor: const Color.fromARGB(255, 17, 70, 20),
                imagem: "assets/image/vestidos/vestido05.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
        Produtos(
          id: "006",
          nome: "Veste flor",
          preco: 80,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "azul escuro",
                cor: const Color.fromARGB(255, 4, 18, 39),
                imagem: "assets/image/vestidos/vestido06.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
        Produtos(
          id: "007",
          nome: "Barbie",
          preco: 99.99,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "roso",
                cor: const Color.fromARGB(255, 223, 147, 172),
                imagem: "assets/image/vestidos/barbie.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 5,
          isFavorito: false,
        ),
        Produtos(
          id: "008",
          nome: "Meigo",
          preco: 140.90,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "roso",
                cor: const Color.fromARGB(255, 231, 206, 215),
                imagem: "assets/image/vestidos/meigo.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 5,
          isFavorito: false,
        ),
        Produtos(
          id: "009",
          nome: "Vestido Midi",
          preco: 160.85,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "roso",
                cor: const Color.fromARGB(255, 255, 255, 255),
                imagem: "assets/image/vestidos/vestido_midi.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 5,
          isFavorito: false,
        ),
      ],
      Selecao.blusas: [
        Produtos(
          id: "001",
          nome: "Blind elegante",
          preco: 85.60,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "verde claro",
                cor: const Color.fromARGB(255, 33, 243, 68),
                imagem: "assets/image/blusas/blind_elegante.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.5,
          isFavorito: false,
        ),
        Produtos(
          id: "002",
          nome: "Blusa pink",
          preco: 150.50,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "roso",
                cor: Colors.pink[300]!,
                imagem: "assets/image/blusas/blusa_pink.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.8,
          isFavorito: false,
        ),
        Produtos(
          id: "003",
          nome: "Dealing",
          preco: 160.95,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "branco",
                cor: Colors.white,
                imagem: "assets/image/blusas/dealing.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.2,
          isFavorito: false,
        ),
        Produtos(
          id: "004",
          nome: "Elegante",
          preco: 100.90,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "roxo",
                cor: Colors.purple,
                imagem: "assets/image/blusas/elegante.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "005",
          nome: "Karmani",
          preco: 80,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "verde",
                cor: Colors.green[800]!,
                imagem: "assets/image/blusas/karmani.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "006",
          nome: "Style Flash",
          preco: 95.60,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "roso",
                cor: Colors.pink[300]!,
                imagem: "assets/image/blusas/style_flash.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
      ],
      Selecao.saias: [
        Produtos(
          id: "001",
          nome: "Camp",
          preco: 190.60,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "laranja escuro",
                cor: const Color.fromARGB(255, 175, 109, 10),
                imagem: "assets/image/saias/camp.png"),
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.5,
          isFavorito: false,
        ),
        Produtos(
          id: "002",
          nome: "Elegant",
          preco: 95.85,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "laranja",
                cor: const Color.fromARGB(255, 248, 161, 31),
                imagem: "assets/image/saias/elegant.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.8,
          isFavorito: false,
        ),
        Produtos(
          id: "003",
          nome: "Saia Bluend",
          preco: 99.99,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "verde",
                cor: Colors.green[800]!,
                imagem: "assets/image/saias/saia_bluend.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.2,
          isFavorito: false,
        ),
        Produtos(
          id: "004",
          nome: "Saia Golme",
          preco: 85.45,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "branco",
                cor: Colors.white,
                imagem: "assets/image/saias/saia_golme.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "005",
          nome: "Saia Midi",
          preco: 80,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "verde",
                cor: Colors.green[800]!,
                imagem: "assets/image/saias/saia_midi.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "006",
          nome: "Saia Social",
          preco: 209.99,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "laranja escuro",
                cor: const Color.fromARGB(255, 175, 109, 10),
                imagem: "assets/image/saias/saia_social.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
        Produtos(
          id: "007",
          nome: "Saind",
          preco: 58.95,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "branco",
                cor: Colors.white,
                imagem: "assets/image/saias/saind.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
      ],
      Selecao.bolsas: [
        Produtos(
          id: "001",
          nome: "Bag Bragmybag",
          preco: 78.80,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "branco",
                cor: Colors.white,
                imagem: "assets/image/bolsas/bag_bragmybag.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.5,
          isFavorito: false,
        ),
        Produtos(
          id: "002",
          nome: "Bag",
          preco: 95.85,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "laranja",
                cor: const Color.fromARGB(255, 248, 161, 31),
                imagem: "assets/image/bolsas/bag.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.8,
          isFavorito: false,
        ),
        Produtos(
          id: "003",
          nome: "Bolsa Slip",
          preco: 85.99,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "branco",
                cor: Colors.white,
                imagem: "assets/image/bolsas/bolsa_slip.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.2,
          isFavorito: false,
        ),
        Produtos(
          id: "004",
          nome: "Borboletas",
          preco: 85.45,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "rosa",
                cor: Colors.pink[200]!,
                imagem: "assets/image/bolsas/borboleta01.jpeg"),
            CorEImagem(
                nome: "branco",
                cor: Colors.white,
                imagem: "assets/image/bolsas/borboleta02.jpeg"),
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "005",
          nome: "Crint",
          preco: 80,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "preto",
                cor: Colors.black,
                imagem: "assets/image/bolsas/crint.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4.7,
          isFavorito: false,
        ),
        Produtos(
          id: "006",
          nome: "neve",
          preco: 89.99,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "branco",
                cor: Colors.white,
                imagem: "assets/image/bolsas/neve01.jpeg"),
            CorEImagem(
                nome: "laranja",
                cor: Colors.orange,
                imagem: "assets/image/bolsas/neve02.jpeg"),
            CorEImagem(
                nome: "preto",
                cor: Colors.black,
                imagem: "assets/image/bolsas/neve03.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
        Produtos(
          id: "007",
          nome: "Slot",
          preco: 58.95,
          corEImagem: ObservableList.of([
            CorEImagem(
                nome: "preto",
                cor: Colors.black,
                imagem: "assets/image/bolsas/slot.jpeg")
          ]),
          tamanho: ObservableList.of(["P", "M", "G"]),
          avaliacao: 4,
          isFavorito: false,
        ),
      ],
    },
  );

  @observable
  Selecao selecaoPega = Selecao.vestidos;

  @computed
  int get tamanhoLista => mapListaProdutos[selecaoPega]!.length;

  @computed
  List<Produtos> get listaDeProdutos => mapListaProdutos[selecaoPega]!;

  @action
  void selecionandoListaDeProdutos(Selecao selecao) {
    selecaoPega = selecao;
  }

  @action
  void adicionandoFavorito(Produtos produto) {
    produto.isFavorito = !produto.isFavorito;
  }

  @observable
  int indiceImagemProduto = 0;

  @observable
  Produtos? produtos;

  @action
  void pegandoProduto({required Produtos produtosPego}) {
    produtos = produtosPego;
  }

  @action
  void alterandoIndiceImagemProduto(int indice) {
    indiceImagemProduto = indice;
  }

  @observable
  double posicaoPega = 0.0;
  @action
  void alterandoPosicao(double posicao) {
    posicaoPega = posicao;
  }
}
