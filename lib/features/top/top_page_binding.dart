import 'package:diggin_v2/features/top/top_page_view_model.dart';
import 'package:get/get.dart';

class TopPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TopPageViewModel>(() => TopPageViewModel());
  }
}
