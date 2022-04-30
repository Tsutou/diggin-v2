import 'package:diggin_v2/data/api_constants.dart';
import 'package:diggin_v2/data/model/itunes_data.dart';
import 'package:get/get.dart';

class ItunesRemoteDataSource extends GetConnect {

  ItunesRemoteDataSource() {
    httpClient.baseUrl = RemoteDataConstants.itunesApiBaseUrl;
  }

  Future<Response<ItunesData>> fetchVideos(String artist) {
    httpClient.defaultDecoder = (json) => ItunesData.fromJson(json);

    const path = "search";

    final Map<String, dynamic> query = {
      "term": artist,
      "entity": 'musicVideo',
      "limit" : 20
    };

    return get<ItunesData>(path, query: query);
  }
}
