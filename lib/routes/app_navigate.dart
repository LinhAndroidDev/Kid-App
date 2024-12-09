import 'package:get/get.dart';
import 'package:kid_app/routes/app_route.dart';

import '../model/quiz.dart';
import '../screens/root/bottom_navigation/bottom_navigation_item.dart';
import '../screens/root/root_controller.dart';

class AppNavigate {
  static final AppNavigate instance = AppNavigate._internal();

  factory AppNavigate() {
    return instance;
  }

  AppNavigate._internal();

  int? get _appId {
    try {
      return Get.find<RootController>().key;
    } catch (_) {
      return null;
    }
  }

  void selectedTab(BottomNavigationItem newTab) {
    Get.find<RootController>().updateTabItem(newTab);
  }

  Future<T?> toNamed<T>(
    String page, {
    dynamic arguments,
    bool preventDuplicates = false,
    bool withId = false,
  }) async {
    return await Get.toNamed(
      page,
      arguments: arguments,
      preventDuplicates: preventDuplicates,
      id: withId ? _appId : null,
    );
  }

  Future<T?> offAllNamed<T>(String page,
      {dynamic arguments, bool withId = true}) async {
    return await Get.offAllNamed(
      page,
      arguments: arguments,
      id: withId ? _appId : null,
    );
  }

  void back<T>({
    T? result,
    String? settingName,
    bool withId = true,
  }) {
    if (settingName == null) {
      Get.back(
        result: result,
        id: withId ? _appId : null,
      );
    } else {
      Get.until(
        (route) => (route.settings.name == settingName),
        id: withId ? _appId : null,
      );
    }
  }
}

extension AppNavigateScreen on AppNavigate {
  Future<void> initApp() async {
    return await toNamed(AppRoute.root.rawValue, withId: false);
  }

  Future<T> gotoHomePage<T>() async {
    selectedTab(BottomNavigationItem.home);
    return await offAllNamed(AppRoute.home.rawValue);
  }

  Future<T> gotoIndicePage<T>() async {
    selectedTab(BottomNavigationItem.dice);
    return await offAllNamed(AppRoute.indices.rawValue);
  }

  Future<T> gotoCoinPage<T>() async {
    selectedTab(BottomNavigationItem.coin);
    return await offAllNamed(AppRoute.coin.rawValue);
  }

  Future<T> gotoIntroPage<T>() async {
    return await offAllNamed(AppRoute.intro.rawValue);
  }

  Future<T> gotoQuizPage<T>({required Quiz quiz}) async {
    return await toNamed(AppRoute.quiz.rawValue, arguments: quiz);
  }

  Future<T> gotoCompleteQuizPage<T>() async {
    return await offAllNamed(AppRoute.complete.rawValue);
  }
}
