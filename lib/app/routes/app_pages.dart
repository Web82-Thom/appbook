import 'package:get/get.dart';

import '../modules/aboutMe/bindings/about_me_binding.dart';
import '../modules/aboutMe/views/about_me_view.dart';
import '../modules/currivitae/bindings/currivitae_binding.dart';
import '../modules/currivitae/views/currivitae_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';
import '../modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WELCOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_ME,
      page: () => const AboutMeView(),
      binding: AboutMeBinding(),
    ),
    GetPage(
      name: _Paths.CURRIVITAE,
      page: () => const CurrivitaeView(),
      binding: CurrivitaeBinding(),
    ),
  ];
}
