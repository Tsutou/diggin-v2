import 'package:diggin_v2/features/clip/clip_list_binding.dart';
import 'package:diggin_v2/features/clip/clip_list_page.dart';
import 'package:diggin_v2/features/top/top_page.dart';
import 'package:diggin_v2/features/top/top_page_binding.dart';
import 'package:diggin_v2/routes/routes.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.topNavigation,
      page: () => const TopPage(),
      bindings: [
        TopPageBinding(),
        ClipListBinding(),
      ],
      children: [GetPage(name: Routes.clips, page: () => const ClipListPage())],
    ),
  ];
}
