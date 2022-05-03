// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'itunes_data_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ItunesDataList _$ItunesDataListFromJson(Map<String, dynamic> json) {
  return _ItunesDataList.fromJson(json);
}

/// @nodoc
class _$ItunesDataListTearOff {
  const _$ItunesDataListTearOff();

  _ItunesDataList call(
      {required int resultCount, required List<ItunesData> results}) {
    return _ItunesDataList(
      resultCount: resultCount,
      results: results,
    );
  }

  ItunesDataList fromJson(Map<String, Object?> json) {
    return ItunesDataList.fromJson(json);
  }
}

/// @nodoc
const $ItunesDataList = _$ItunesDataListTearOff();

/// @nodoc
mixin _$ItunesDataList {
  int get resultCount => throw _privateConstructorUsedError;
  List<ItunesData> get results => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItunesDataListCopyWith<ItunesDataList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItunesDataListCopyWith<$Res> {
  factory $ItunesDataListCopyWith(
          ItunesDataList value, $Res Function(ItunesDataList) then) =
      _$ItunesDataListCopyWithImpl<$Res>;
  $Res call({int resultCount, List<ItunesData> results});
}

/// @nodoc
class _$ItunesDataListCopyWithImpl<$Res>
    implements $ItunesDataListCopyWith<$Res> {
  _$ItunesDataListCopyWithImpl(this._value, this._then);

  final ItunesDataList _value;
  // ignore: unused_field
  final $Res Function(ItunesDataList) _then;

  @override
  $Res call({
    Object? resultCount = freezed,
    Object? results = freezed,
  }) {
    return _then(_value.copyWith(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ItunesData>,
    ));
  }
}

/// @nodoc
abstract class _$ItunesDataListCopyWith<$Res>
    implements $ItunesDataListCopyWith<$Res> {
  factory _$ItunesDataListCopyWith(
          _ItunesDataList value, $Res Function(_ItunesDataList) then) =
      __$ItunesDataListCopyWithImpl<$Res>;
  @override
  $Res call({int resultCount, List<ItunesData> results});
}

/// @nodoc
class __$ItunesDataListCopyWithImpl<$Res>
    extends _$ItunesDataListCopyWithImpl<$Res>
    implements _$ItunesDataListCopyWith<$Res> {
  __$ItunesDataListCopyWithImpl(
      _ItunesDataList _value, $Res Function(_ItunesDataList) _then)
      : super(_value, (v) => _then(v as _ItunesDataList));

  @override
  _ItunesDataList get _value => super._value as _ItunesDataList;

  @override
  $Res call({
    Object? resultCount = freezed,
    Object? results = freezed,
  }) {
    return _then(_ItunesDataList(
      resultCount: resultCount == freezed
          ? _value.resultCount
          : resultCount // ignore: cast_nullable_to_non_nullable
              as int,
      results: results == freezed
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<ItunesData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItunesDataList implements _ItunesDataList {
  _$_ItunesDataList({required this.resultCount, required this.results});

  factory _$_ItunesDataList.fromJson(Map<String, dynamic> json) =>
      _$$_ItunesDataListFromJson(json);

  @override
  final int resultCount;
  @override
  final List<ItunesData> results;

  @override
  String toString() {
    return 'ItunesDataList(resultCount: $resultCount, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ItunesDataList &&
            (identical(other.resultCount, resultCount) ||
                other.resultCount == resultCount) &&
            const DeepCollectionEquality().equals(other.results, results));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, resultCount, const DeepCollectionEquality().hash(results));

  @JsonKey(ignore: true)
  @override
  _$ItunesDataListCopyWith<_ItunesDataList> get copyWith =>
      __$ItunesDataListCopyWithImpl<_ItunesDataList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItunesDataListToJson(this);
  }
}

abstract class _ItunesDataList implements ItunesDataList {
  factory _ItunesDataList(
      {required int resultCount,
      required List<ItunesData> results}) = _$_ItunesDataList;

  factory _ItunesDataList.fromJson(Map<String, dynamic> json) =
      _$_ItunesDataList.fromJson;

  @override
  int get resultCount;
  @override
  List<ItunesData> get results;
  @override
  @JsonKey(ignore: true)
  _$ItunesDataListCopyWith<_ItunesDataList> get copyWith =>
      throw _privateConstructorUsedError;
}
