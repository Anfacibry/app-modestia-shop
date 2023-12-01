import 'package:app_fashion_shop/config/routes/named_routes.dart';
import 'package:app_fashion_shop/config/style/app_style.dart';

import 'package:mobx/mobx.dart';

part 'store_login.g.dart';

// ignore: library_private_types_in_public_api
class StoreLogin = _StoreLogin with _$StoreLogin;

enum Account { facebook, google, x, vazio }

abstract class _StoreLogin with Store {
  @observable
  bool isLogin = false;

  @action
  String login() {
    if (isLogin) {
      return NamedRoutes.routeHome;
    } else {
      return NamedRoutes.routeLogin;
    }
  }

  @observable
  String account = "";

  @observable
  bool rememberPassword = false;

  @observable
  Account accountAccessed = Account.vazio;

  @observable
  String imageNetwork = "";

  @action
  void isRememberPassword(bool value) {
    rememberPassword = value;
  }

  @action
  void typeAccountAccessed(Account getAccount) {
    accountAccessed = getAccount;
    if (accountAccessed.index == 0) {
      imageNetwork = AppStyle.imageFacebook;
      account = "Facebook";
    }
    if (accountAccessed.index == 1) {
      imageNetwork = AppStyle.imageGoogle;
      account = "Google";
    }
    if (accountAccessed.index == 2) {
      imageNetwork = AppStyle.imageX;
      account = "X";
    }
  }
}
