import 'package:diggin_v2/data/model/itunes_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'itunes_data_list.freezed.dart';

part 'itunes_data_list.g.dart';

@freezed
class ItunesDataList with _$ItunesDataList {
  factory ItunesDataList({
    required int resultCount,
    required List<ItunesData> results
  }) = _ItunesDataList;

  factory ItunesDataList.fromJson(Map<String, dynamic> json) =>
      _$ItunesDataListFromJson(json);
}
