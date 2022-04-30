import 'package:diggin_v2/data/api_constants.dart';
import 'package:diggin_v2/data/model/api_request_type.dart';
import 'package:diggin_v2/data/model/itunes_data.dart';
import 'package:diggin_v2/data/model/result.dart';
import 'package:diggin_v2/data/remote/acstract_data_source.dart';

class ItunesRemoteDataSource extends ApiClient {

  @override
  String baseUrl = RemoteDataConstants.itunesApiBaseUrl;

  Future<Result<ItunesData>> fetchVideos(String artist) {
    return sendRequest(
      type: ApiRequestType.get,
      path: "search",
      decoder: (json) => ItunesData.fromJson(json),
    );
  }
}
