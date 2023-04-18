// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../movie/movie_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieResult _$MovieResultFromJson(Map<String, dynamic> json) {
  return _MovieResult.fromJson(json);
}

/// @nodoc
mixin _$MovieResult {
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  set page(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<Movie> get results => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  set results(List<Movie> value) => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  set totalPages(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  int get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  set totalResults(int value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieResultCopyWith<MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResultCopyWith<$Res> {
  factory $MovieResultCopyWith(
          MovieResult value, $Res Function(MovieResult) then) =
      _$MovieResultCopyWithImpl<$Res, MovieResult>;
  @useResult
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "results") List<Movie> results,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class _$MovieResultCopyWithImpl<$Res, $Val extends MovieResult>
    implements $MovieResultCopyWith<$Res> {
  _$MovieResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieResultCopyWith<$Res>
    implements $MovieResultCopyWith<$Res> {
  factory _$$_MovieResultCopyWith(
          _$_MovieResult value, $Res Function(_$_MovieResult) then) =
      __$$_MovieResultCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "results") List<Movie> results,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});
}

/// @nodoc
class __$$_MovieResultCopyWithImpl<$Res>
    extends _$MovieResultCopyWithImpl<$Res, _$_MovieResult>
    implements _$$_MovieResultCopyWith<$Res> {
  __$$_MovieResultCopyWithImpl(
      _$_MovieResult _value, $Res Function(_$_MovieResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$_MovieResult(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MovieResult implements _MovieResult {
  _$_MovieResult(
      {@JsonKey(name: "page") this.page = 0,
      @JsonKey(name: "results") this.results = const [],
      @JsonKey(name: "total_pages") this.totalPages = 0,
      @JsonKey(name: "total_results") this.totalResults = 0});

  factory _$_MovieResult.fromJson(Map<String, dynamic> json) =>
      _$$_MovieResultFromJson(json);

  @override
  @JsonKey(name: "page")
  int page;
  @override
  @JsonKey(name: "results")
  List<Movie> results;
  @override
  @JsonKey(name: "total_pages")
  int totalPages;
  @override
  @JsonKey(name: "total_results")
  int totalResults;

  @override
  String toString() {
    return 'MovieResult(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieResultCopyWith<_$_MovieResult> get copyWith =>
      __$$_MovieResultCopyWithImpl<_$_MovieResult>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieResultToJson(
      this,
    );
  }
}

abstract class _MovieResult implements MovieResult {
  factory _MovieResult(
      {@JsonKey(name: "page") int page,
      @JsonKey(name: "results") List<Movie> results,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults}) = _$_MovieResult;

  factory _MovieResult.fromJson(Map<String, dynamic> json) =
      _$_MovieResult.fromJson;

  @override
  @JsonKey(name: "page")
  int get page;
  @JsonKey(name: "page")
  set page(int value);
  @override
  @JsonKey(name: "results")
  List<Movie> get results;
  @JsonKey(name: "results")
  set results(List<Movie> value);
  @override
  @JsonKey(name: "total_pages")
  int get totalPages;
  @JsonKey(name: "total_pages")
  set totalPages(int value);
  @override
  @JsonKey(name: "total_results")
  int get totalResults;
  @JsonKey(name: "total_results")
  set totalResults(int value);
  @override
  @JsonKey(ignore: true)
  _$$_MovieResultCopyWith<_$_MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}
