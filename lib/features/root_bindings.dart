import 'dart:io';

import 'package:alice/alice.dart';
import 'package:get/get.dart';

class RootBindings extends Bindings {
  @override
  void dependencies() {
    // TODO: env dev only
    Get.put(
      Alice(
        showNotification: Platform.isAndroid,
        navigatorKey: Get.key,
        showInspectorOnShake: true,
        showShareButton: true,
      ),
    );
  }
}
