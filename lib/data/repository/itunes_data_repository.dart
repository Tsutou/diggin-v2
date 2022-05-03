import 'package:diggin_v2/data/model/itunes_data_list.dart';
import 'package:diggin_v2/data/model/result.dart';
import 'package:diggin_v2/data/remote/itunes_data_remote_data_source.dart';
import 'package:flutter/foundation.dart';

class ItunesDataRepository {
  final ItunesRemoteDataSource dataSource;

  ItunesDataRepository(this.dataSource);

  Future<Result<ItunesDataList>> searchVideos(String artist) async {
    final result = await dataSource.fetchVideos(artist);
    debugPrint(result.toString());
    return result;
  }
}