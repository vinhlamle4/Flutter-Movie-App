// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../movie/movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  @JsonKey(name: "adult")
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "adult")
  set adult(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  set backdropPath(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  List<int> get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  set genreIds(List<int> value) => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  set id(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  set originalLanguage(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  set originalTitle(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  set overview(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  set popularity(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  set posterPath(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  set releaseDate(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "runtime")
  int get runtime => throw _privateConstructorUsedError;
  @JsonKey(name: "runtime")
  set runtime(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  set title(String value) => throw _privateConstructorUsedError;
  @JsonKey(name: "video")
  bool get video => throw _privateConstructorUsedError;
  @JsonKey(name: "video")
  set video(bool value) => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  set voteAverage(double value) => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_count")
  int get voteCount => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_count")
  set voteCount(int value) => throw _privateConstructorUsedError;
  @JsonKey(name: "videos")
  VideoResult get videos => throw _privateConstructorUsedError;
  @JsonKey(name: "videos")
  set videos(VideoResult value) => throw _privateConstructorUsedError; //Detail
  @JsonKey(name: "genres")
  List<Genre> get genres => throw _privateConstructorUsedError; //Detail
  @JsonKey(name: "genres")
  set genres(List<Genre> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {@JsonKey(name: "adult") bool adult,
      @JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "genre_ids") List<int> genreIds,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_language") String originalLanguage,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "runtime") int runtime,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "video") bool video,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "vote_count") int voteCount,
      @JsonKey(name: "videos") VideoResult videos,
      @JsonKey(name: "genres") List<Genre> genres});

  $VideoResultCopyWith<$Res> get videos;
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = null,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? runtime = null,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? videos = null,
    Object? genres = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as VideoResult,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VideoResultCopyWith<$Res> get videos {
    return $VideoResultCopyWith<$Res>(_value.videos, (value) {
      return _then(_value.copyWith(videos: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$_MovieCopyWith(_$_Movie value, $Res Function(_$_Movie) then) =
      __$$_MovieCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "adult") bool adult,
      @JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "genre_ids") List<int> genreIds,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_language") String originalLanguage,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "runtime") int runtime,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "video") bool video,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "vote_count") int voteCount,
      @JsonKey(name: "videos") VideoResult videos,
      @JsonKey(name: "genres") List<Genre> genres});

  @override
  $VideoResultCopyWith<$Res> get videos;
}

/// @nodoc
class __$$_MovieCopyWithImpl<$Res> extends _$MovieCopyWithImpl<$Res, _$_Movie>
    implements _$$_MovieCopyWith<$Res> {
  __$$_MovieCopyWithImpl(_$_Movie _value, $Res Function(_$_Movie) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = null,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = null,
    Object? releaseDate = null,
    Object? runtime = null,
    Object? title = null,
    Object? video = null,
    Object? voteAverage = null,
    Object? voteCount = null,
    Object? videos = null,
    Object? genres = null,
  }) {
    return _then(_$_Movie(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: null == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      runtime: null == runtime
          ? _value.runtime
          : runtime // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      video: null == video
          ? _value.video
          : video // ignore: cast_nullable_to_non_nullable
              as bool,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
      voteCount: null == voteCount
          ? _value.voteCount
          : voteCount // ignore: cast_nullable_to_non_nullable
              as int,
      videos: null == videos
          ? _value.videos
          : videos // ignore: cast_nullable_to_non_nullable
              as VideoResult,
      genres: null == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Genre>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Movie extends _Movie {
  _$_Movie(
      {@JsonKey(name: "adult") this.adult = false,
      @JsonKey(name: "backdrop_path") this.backdropPath = "",
      @JsonKey(name: "genre_ids") this.genreIds = const [],
      @JsonKey(name: "id") this.id = -1,
      @JsonKey(name: "original_language") this.originalLanguage = "",
      @JsonKey(name: "original_title") this.originalTitle = "",
      @JsonKey(name: "overview") this.overview = "",
      @JsonKey(name: "popularity") this.popularity = 0.0,
      @JsonKey(name: "poster_path") this.posterPath = "",
      @JsonKey(name: "release_date") this.releaseDate = "",
      @JsonKey(name: "runtime") this.runtime = 0,
      @JsonKey(name: "title") this.title = "",
      @JsonKey(name: "video") this.video = false,
      @JsonKey(name: "vote_average") this.voteAverage = 0.0,
      @JsonKey(name: "vote_count") this.voteCount = 0,
      @JsonKey(name: "videos") this.videos = const VideoResult(),
      @JsonKey(name: "genres") this.genres = const []})
      : super._();

  factory _$_Movie.fromJson(Map<String, dynamic> json) =>
      _$$_MovieFromJson(json);

  @override
  @JsonKey(name: "adult")
  bool adult;
  @override
  @JsonKey(name: "backdrop_path")
  String backdropPath;
  @override
  @JsonKey(name: "genre_ids")
  List<int> genreIds;
  @override
  @JsonKey(name: "id")
  int id;
  @override
  @JsonKey(name: "original_language")
  String originalLanguage;
  @override
  @JsonKey(name: "original_title")
  String originalTitle;
  @override
  @JsonKey(name: "overview")
  String overview;
  @override
  @JsonKey(name: "popularity")
  double popularity;
  @override
  @JsonKey(name: "poster_path")
  String posterPath;
  @override
  @JsonKey(name: "release_date")
  String releaseDate;
  @override
  @JsonKey(name: "runtime")
  int runtime;
  @override
  @JsonKey(name: "title")
  String title;
  @override
  @JsonKey(name: "video")
  bool video;
  @override
  @JsonKey(name: "vote_average")
  double voteAverage;
  @override
  @JsonKey(name: "vote_count")
  int voteCount;
  @override
  @JsonKey(name: "videos")
  VideoResult videos;
//Detail
  @override
  @JsonKey(name: "genres")
  List<Genre> genres;

  @override
  String toString() {
    return 'Movie(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, runtime: $runtime, title: $title, video: $video, voteAverage: $voteAverage, voteCount: $voteCount, videos: $videos, genres: $genres)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      __$$_MovieCopyWithImpl<_$_Movie>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MovieToJson(
      this,
    );
  }
}

abstract class _Movie extends Movie {
  factory _Movie(
      {@JsonKey(name: "adult") bool adult,
      @JsonKey(name: "backdrop_path") String backdropPath,
      @JsonKey(name: "genre_ids") List<int> genreIds,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_language") String originalLanguage,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "poster_path") String posterPath,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "runtime") int runtime,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "video") bool video,
      @JsonKey(name: "vote_average") double voteAverage,
      @JsonKey(name: "vote_count") int voteCount,
      @JsonKey(name: "videos") VideoResult videos,
      @JsonKey(name: "genres") List<Genre> genres}) = _$_Movie;
  _Movie._() : super._();

  factory _Movie.fromJson(Map<String, dynamic> json) = _$_Movie.fromJson;

  @override
  @JsonKey(name: "adult")
  bool get adult;
  @JsonKey(name: "adult")
  set adult(bool value);
  @override
  @JsonKey(name: "backdrop_path")
  String get backdropPath;
  @JsonKey(name: "backdrop_path")
  set backdropPath(String value);
  @override
  @JsonKey(name: "genre_ids")
  List<int> get genreIds;
  @JsonKey(name: "genre_ids")
  set genreIds(List<int> value);
  @override
  @JsonKey(name: "id")
  int get id;
  @JsonKey(name: "id")
  set id(int value);
  @override
  @JsonKey(name: "original_language")
  String get originalLanguage;
  @JsonKey(name: "original_language")
  set originalLanguage(String value);
  @override
  @JsonKey(name: "original_title")
  String get originalTitle;
  @JsonKey(name: "original_title")
  set originalTitle(String value);
  @override
  @JsonKey(name: "overview")
  String get overview;
  @JsonKey(name: "overview")
  set overview(String value);
  @override
  @JsonKey(name: "popularity")
  double get popularity;
  @JsonKey(name: "popularity")
  set popularity(double value);
  @override
  @JsonKey(name: "poster_path")
  String get posterPath;
  @JsonKey(name: "poster_path")
  set posterPath(String value);
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
  @JsonKey(name: "release_date")
  set releaseDate(String value);
  @override
  @JsonKey(name: "runtime")
  int get runtime;
  @JsonKey(name: "runtime")
  set runtime(int value);
  @override
  @JsonKey(name: "title")
  String get title;
  @JsonKey(name: "title")
  set title(String value);
  @override
  @JsonKey(name: "video")
  bool get video;
  @JsonKey(name: "video")
  set video(bool value);
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;
  @JsonKey(name: "vote_average")
  set voteAverage(double value);
  @override
  @JsonKey(name: "vote_count")
  int get voteCount;
  @JsonKey(name: "vote_count")
  set voteCount(int value);
  @override
  @JsonKey(name: "videos")
  VideoResult get videos;
  @JsonKey(name: "videos")
  set videos(VideoResult value);
  @override //Detail
  @JsonKey(name: "genres")
  List<Genre> get genres; //Detail
  @JsonKey(name: "genres")
  set genres(List<Genre> value);
  @override
  @JsonKey(ignore: true)
  _$$_MovieCopyWith<_$_Movie> get copyWith =>
      throw _privateConstructorUsedError;
}
