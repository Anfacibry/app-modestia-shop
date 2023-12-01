import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'image_color.g.dart';

// ignore: library_private_types_in_public_api
class ImageColor = _ImageColor with _$ImageColor;

abstract class _ImageColor with Store {
  @observable
  String name;
  @observable
  Color color;
  @observable
  String image;
  _ImageColor({required this.name, required this.color, required this.image});
}
