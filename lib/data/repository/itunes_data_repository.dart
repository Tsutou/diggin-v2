import 'package:diggin_v2/data/model/app_error.dart';
import 'package:diggin_v2/data/model/itunes_data.dart';
import 'package:diggin_v2/data/model/result.dart';
import 'package:diggin_v2/data/remote/itunes_data_remote_data_source.dart';

class ItunesDataRepository {
  final ItunesDataRemoteDataSource dataSource;

  ItunesDataRepository(this.dataSource);

  Future<Result<ItunesData>> searchVideos(String artist, String entity) async {
    final videos = await dataSource.fetchVideos(artist, entity);
    try {
      return Result.success(data: videos.body!);
    } on Exception catch (e) {
      return Result.failure(error: AppError(e));
    }
  }
}