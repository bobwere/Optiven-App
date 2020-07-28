import 'package:get/route_manager.dart';
import 'package:optiven/pages/main_widget.dart';
import 'package:optiven/pages/splash_page.dart';

class Routes {
  static final routes = [
    GetPage(
      name: '/',
      page: () => SplashPage(),
    ),
    GetPage(
      name: '/mainwidget',
      page: () => MainWidget(),
      transition: Transition.fadeIn,
    ),
  ];
}
