// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_home.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StoreHome on _StoreHome, Store {
  Computed<String>? _$imageAnnouncementComputed;

  @override
  String get imageAnnouncement => (_$imageAnnouncementComputed ??=
          Computed<String>(() => super.imageAnnouncement,
              name: '_StoreHome.imageAnnouncement'))
      .value;

  late final _$takeIndexPageAtom =
      Atom(name: '_StoreHome.takeIndexPage', context: context);

  @override
  int get takeIndexPage {
    _$takeIndexPageAtom.reportRead();
    return super.takeIndexPage;
  }

  @override
  set takeIndexPage(int value) {
    _$takeIndexPageAtom.reportWrite(value, super.takeIndexPage, () {
      super.takeIndexPage = value;
    });
  }

  late final _$listImageAtom =
      Atom(name: '_StoreHome.listImage', context: context);

  @override
  ObservableList<Map<String, String>> get listImage {
    _$listImageAtom.reportRead();
    return super.listImage;
  }

  @override
  set listImage(ObservableList<Map<String, String>> value) {
    _$listImageAtom.reportWrite(value, super.listImage, () {
      super.listImage = value;
    });
  }

  late final _$indexAtom = Atom(name: '_StoreHome.index', context: context);

  @override
  int get index {
    _$indexAtom.reportRead();
    return super.index;
  }

  @override
  set index(int value) {
    _$indexAtom.reportWrite(value, super.index, () {
      super.index = value;
    });
  }

  late final _$indexIconNavigatorAtom =
      Atom(name: '_StoreHome.indexIconNavigator', context: context);

  @override
  int get indexIconNavigator {
    _$indexIconNavigatorAtom.reportRead();
    return super.indexIconNavigator;
  }

  @override
  set indexIconNavigator(int value) {
    _$indexIconNavigatorAtom.reportWrite(value, super.indexIconNavigator, () {
      super.indexIconNavigator = value;
    });
  }

  late final _$isHomeAtom = Atom(name: '_StoreHome.isHome', context: context);

  @override
  bool get isHome {
    _$isHomeAtom.reportRead();
    return super.isHome;
  }

  @override
  set isHome(bool value) {
    _$isHomeAtom.reportWrite(value, super.isHome, () {
      super.isHome = value;
    });
  }

  late final _$_StoreHomeActionController =
      ActionController(name: '_StoreHome', context: context);

  @override
  void updateIndex(int index) {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.updateIndex');
    try {
      return super.updateIndex(index);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getIndex(int value) {
    final _$actionInfo =
        _$_StoreHomeActionController.startAction(name: '_StoreHome.getIndex');
    try {
      return super.getIndex(value);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void getIndexIconNavigator(int value) {
    final _$actionInfo = _$_StoreHomeActionController.startAction(
        name: '_StoreHome.getIndexIconNavigator');
    try {
      return super.getIndexIconNavigator(value);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setIsHome(bool isHome) {
    final _$actionInfo =
        _$_StoreHomeActionController.startAction(name: '_StoreHome.setIsHome');
    try {
      return super.setIsHome(isHome);
    } finally {
      _$_StoreHomeActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
takeIndexPage: ${takeIndexPage},
listImage: ${listImage},
index: ${index},
indexIconNavigator: ${indexIconNavigator},
isHome: ${isHome},
imageAnnouncement: ${imageAnnouncement}
    ''';
  }
}
