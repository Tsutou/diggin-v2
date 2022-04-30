import 'package:diggin_v2/data/repository/itunes_data_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class ClipListViewModel extends GetxController {
  final ItunesDataRepository itunesDataRepository;

  ClipListViewModel({required this.itunesDataRepository});

  @override
  void onReady() async {
    super.onReady();
    await _fetchItunesVideoList('alicia keys');
  }

  _fetchItunesVideoList(String query) async {
    final itunesVideos = await itunesDataRepository.searchVideos(query);
    debugPrint(itunesVideos.toString());
  }
}
