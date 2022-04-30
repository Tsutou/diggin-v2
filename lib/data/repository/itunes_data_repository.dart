import 'package:diggin_v2/data/model/itunes_data.dart';
import 'package:diggin_v2/data/model/result.dart';
import 'package:diggin_v2/data/remote/itunes_data_remote_data_source.dart';

class ItunesDataRepository {
  final ItunesRemoteDataSource dataSource;

  ItunesDataRepository(this.dataSource);

  Future<Result<ItunesData>> searchVideos(String artist) async {
    return await dataSource.fetchVideos(artist);
  }
}
