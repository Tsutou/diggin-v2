import 'package:diggin_v2/data/remote/itunes_data_remote_data_source.dart';
import 'package:diggin_v2/data/repository/itunes_data_repository.dart';
import 'package:diggin_v2/features/clip/clip_list_view_model.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class ClipListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ItunesRemoteDataSource());
    Get.lazyPut(() => ItunesDataRepository(Get.find<ItunesRemoteDataSource>()));
    Get.lazyPut<ClipListViewModel>(
      () => ClipListViewModel(
        itunesDataRepository: Get.find<ItunesDataRepository>(),
      ),
    );
  }
}
