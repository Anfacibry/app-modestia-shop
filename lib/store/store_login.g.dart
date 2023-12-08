// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_login.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$StoreLogin on _StoreLogin, Store {
  late final _$isLoginAtom =
      Atom(name: '_StoreLogin.isLogin', context: context);

  @override
  bool get isLogin {
    _$isLoginAtom.reportRead();
    return super.isLogin;
  }

  @override
  set isLogin(bool value) {
    _$isLoginAtom.reportWrite(value, super.isLogin, () {
      super.isLogin = value;
    });
  }

  late final _$accountAtom =
      Atom(name: '_StoreLogin.account', context: context);

  @override
  String get account {
    _$accountAtom.reportRead();
    return super.account;
  }

  @override
  set account(String value) {
    _$accountAtom.reportWrite(value, super.account, () {
      super.account = value;
    });
  }

  late final _$rememberPasswordAtom =
      Atom(name: '_StoreLogin.rememberPassword', context: context);

  @override
  bool get rememberPassword {
    _$rememberPasswordAtom.reportRead();
    return super.rememberPassword;
  }

  @override
  set rememberPassword(bool value) {
    _$rememberPasswordAtom.reportWrite(value, super.rememberPassword, () {
      super.rememberPassword = value;
    });
  }

  late final _$accountAccessedAtom =
      Atom(name: '_StoreLogin.accountAccessed', context: context);

  @override
  Account get accountAccessed {
    _$accountAccessedAtom.reportRead();
    return super.accountAccessed;
  }

  @override
  set accountAccessed(Account value) {
    _$accountAccessedAtom.reportWrite(value, super.accountAccessed, () {
      super.accountAccessed = value;
    });
  }

  late final _$imageNetworkAtom =
      Atom(name: '_StoreLogin.imageNetwork', context: context);

  @override
  String get imageNetwork {
    _$imageNetworkAtom.reportRead();
    return super.imageNetwork;
  }

  @override
  set imageNetwork(String value) {
    _$imageNetworkAtom.reportWrite(value, super.imageNetwork, () {
      super.imageNetwork = value;
    });
  }

  late final _$_StoreLoginActionController =
      ActionController(name: '_StoreLogin', context: context);

  @override
  void login() {
    final _$actionInfo =
        _$_StoreLoginActionController.startAction(name: '_StoreLogin.login');
    try {
      return super.login();
    } finally {
      _$_StoreLoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void isRememberPassword(bool value) {
    final _$actionInfo = _$_StoreLoginActionController.startAction(
        name: '_StoreLogin.isRememberPassword');
    try {
      return super.isRememberPassword(value);
    } finally {
      _$_StoreLoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  void typeAccountAccessed(Account getAccount) {
    final _$actionInfo = _$_StoreLoginActionController.startAction(
        name: '_StoreLogin.typeAccountAccessed');
    try {
      return super.typeAccountAccessed(getAccount);
    } finally {
      _$_StoreLoginActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLogin: ${isLogin},
account: ${account},
rememberPassword: ${rememberPassword},
accountAccessed: ${accountAccessed},
imageNetwork: ${imageNetwork}
    ''';
  }
}
