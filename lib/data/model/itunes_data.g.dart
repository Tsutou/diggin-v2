// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itunes_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ItunesData _$$_ItunesDataFromJson(Map<String, dynamic> json) =>
    _$_ItunesData(
      artistId: json['artistId'] as int,
      artistName: json['artistName'] as String,
      collectionName: json['collectionName'] as String,
      trackCensoredName: json['trackCensoredName'] as String,
      previewUrl: json['previewUrl'] as String?,
      artworkUrl30: json['artworkUrl30'] as String?,
      artworkUrl60: json['artworkUrl60'] as String?,
      artworkUrl100: json['artworkUrl100'] as String?,
      primaryGenreName: json['primaryGenreName'] as String?,
    );

Map<String, dynamic> _$$_ItunesDataToJson(_$_ItunesData instance) =>
    <String, dynamic>{
      'artistId': instance.artistId,
      'artistName': instance.artistName,
      'collectionName': instance.collectionName,
      'trackCensoredName': instance.trackCensoredName,
      'previewUrl': instance.previewUrl,
      'artworkUrl30': instance.artworkUrl30,
      'artworkUrl60': instance.artworkUrl60,
      'artworkUrl100': instance.artworkUrl100,
      'primaryGenreName': instance.primaryGenreName,
    };
