import 'package:diggin_v2/data/api_constants.dart';
import 'package:diggin_v2/data/model/api_request_type.dart';
import 'package:diggin_v2/data/model/itunes_data.dart';
import 'package:diggin_v2/data/model/itunes_data_list.dart';
import 'package:diggin_v2/data/model/result.dart';
import 'package:diggin_v2/data/remote/api_client.dart';

class ItunesRemoteDataSource extends ApiClient {

  @override
  String baseUrl = RemoteDataConstants.itunesApiBaseUrl;

  Future<Result<ItunesDataList>> fetchVideos(String artistName) {
    return sendRequest(
      type: ApiRequestType.get,
      path: "search",
      query: {'term': artistName},
      decoder: (json) => ItunesDataList.fromJson(json),
    );
  }
}
