import 'package:flutter/cupertino.dart';
import 'package:flutter_project/middlewares/user_login_middleware.dart';
import 'package:get/get.dart';

class AppRouter {
  // 初始化页面
  static String initPage = "/initPage";

  // 登录页面
  static String loginPage = "/loginPage";

  // 页面列表
  static List<GetPage> pages() {
    return [
      GetPage(
        name: AppRouter.initPage,
        page: () => Container(),
        middlewares: [UserLoginMiddleward()],
      ),
      GetPage(
        name: AppRouter.loginPage,
        page: () => Container(),
      )
    ];
  }
}
