
import 'package:diggin_v2/features/clip/clip_list_page.dart';
import 'package:diggin_v2/main.dart';
import 'package:diggin_v2/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static const initial = Routes.homeNavigation;

  static final routes = [
    GetPage(
      name: Routes.homeNavigation,
      page: () => const ClipListPage(),
    ),
  ];
}
