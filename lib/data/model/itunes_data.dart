import 'package:freezed_annotation/freezed_annotation.dart';

part 'itunes_data.freezed.dart';

part 'itunes_data.g.dart';

@freezed
abstract class ItunesData with _$ItunesData {

  factory ItunesData({
    required String artistName,
    required String trackCensoredName,
    String? previewUrl,
    String? artworkUrl30,
    String? artworkUrl60,
    String? artworkUrl100,
    String? primaryGenreName,
  }) = _ItunesData;

  factory ItunesData.fromJson(Map<String, dynamic> json) =>
      _$ItunesDataFromJson(json);
}
