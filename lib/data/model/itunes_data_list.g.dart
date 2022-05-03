// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itunes_data_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItunesDataList _$$_ItunesDataListFromJson(Map<String, dynamic> json) =>
    _$_ItunesDataList(
      resultCount: json['resultCount'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => ItunesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ItunesDataListToJson(_$_ItunesDataList instance) =>
    <String, dynamic>{
      'resultCount': instance.resultCount,
      'results': instance.results,
    };
