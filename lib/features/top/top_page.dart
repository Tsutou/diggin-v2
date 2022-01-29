import 'package:diggin_v2/features/clip/clip_list_page.dart';
import 'package:diggin_v2/features/top/top_page_view_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TopPageViewModel>(
      builder: (controller) {
        return Scaffold(
            body: SafeArea(
                child: IndexedStack(
                  index: controller.tabIndex,
                  children: const [
                    ClipListPage(),
                    ClipListPage(),
                  ],
                )
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.video_camera),
                  label: 'Clips',
                ),
                BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.music_note),
                  label: 'Jackets',
                ),
              ],
            )// Your bottom navigation bar widget here,
        );
      },
    );
  }
}