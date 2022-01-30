import 'package:diggin_v2/data/api_constants.dart';
import 'package:diggin_v2/data/model/itunes_data.dart';
import 'package:get/get.dart';

class ItunesDataRemoteDataSource extends GetConnect {

  ItunesDataRemoteDataSource() {
    httpClient.baseUrl = RemoteDataConstants.itunesApiBaseUrl;
  }

  Future<Response<ItunesData>> fetchVideos(String artist, String entity) {
    httpClient.defaultDecoder = (json) => ItunesData.fromJson(json);

    const path = "search";

    final Map<String, dynamic> query = {
      "term": artist,
      "entity": entity,
      "limit" : 20
    };

    return get<ItunesData>(path, query: query);
  }
}
