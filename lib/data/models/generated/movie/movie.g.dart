// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../movie/movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Movie _$$_MovieFromJson(Map<String, dynamic> json) => _$_Movie(
      adult: json['adult'] as bool? ?? false,
      backdropPath: json['backdrop_path'] as String? ?? "",
      genreIds: (json['genre_ids'] as List<dynamic>?)
              ?.map((e) => e as int)
              .toList() ??
          const [],
      id: json['id'] as int? ?? -1,
      originalLanguage: json['original_language'] as String? ?? "",
      originalTitle: json['original_title'] as String? ?? "",
      overview: json['overview'] as String? ?? "",
      popularity: (json['popularity'] as num?)?.toDouble() ?? 0.0,
      posterPath: json['poster_path'] as String? ?? "",
      releaseDate: json['release_date'] as String? ?? "",
      runtime: json['runtime'] as int? ?? 0,
      title: json['title'] as String? ?? "",
      video: json['video'] as bool? ?? false,
      voteAverage: (json['vote_average'] as num?)?.toDouble() ?? 0.0,
      voteCount: json['vote_count'] as int? ?? 0,
      videos: json['videos'] == null
          ? const VideoResult()
          : VideoResult.fromJson(json['videos'] as Map<String, dynamic>),
      genres: (json['genres'] as List<dynamic>?)
              ?.map((e) => Genre.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MovieToJson(_$_Movie instance) => <String, dynamic>{
      'adult': instance.adult,
      'backdrop_path': instance.backdropPath,
      'genre_ids': instance.genreIds,
      'id': instance.id,
      'original_language': instance.originalLanguage,
      'original_title': instance.originalTitle,
      'overview': instance.overview,
      'popularity': instance.popularity,
      'poster_path': instance.posterPath,
      'release_date': instance.releaseDate,
      'runtime': instance.runtime,
      'title': instance.title,
      'video': instance.video,
      'vote_average': instance.voteAverage,
      'vote_count': instance.voteCount,
      'videos': instance.videos,
      'genres': instance.genres,
    };
