import 'package:diggin_v2/routes/app_pages.dart';
import 'package:diggin_v2/routes/routes.dart';
import 'package:diggin_v2/theme/app_theme.dart';
import 'package:diggin_v2/widgets/guide_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'features/root_bindings.dart';

void main() {
  runApp(const DigginApplication());
}

class DigginApplication extends StatelessWidget {
  const DigginApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'diggin',
      initialRoute: Routes.topNavigation,
      getPages: AppPages.routes,
      initialBinding: RootBindings(),
      theme: AppTheme.lightThemeData,
      darkTheme: AppTheme.darkThemeData,
    );
  }
}
