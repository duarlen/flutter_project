import 'package:flutter/cupertino.dart';
import 'package:flutter_project/router/app_router.dart';
import 'package:get/get.dart';

// 用户登录的中间层
class UserLoginMiddleward extends GetMiddleware {

  @override
  RouteSettings? redirect(String? route) {
    final isLogin = true;
    if (isLogin == true) {
      return super.redirect(route);
    }
    return RouteSettings(name: AppRouter.loginPage);
  }

}