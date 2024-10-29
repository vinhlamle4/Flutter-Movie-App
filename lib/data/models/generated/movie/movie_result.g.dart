// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../movie/movie_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieResultImpl _$$MovieResultImplFromJson(Map<String, dynamic> json) =>
    _$MovieResultImpl(
      page: (json['page'] as num?)?.toInt() ?? 0,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Movie.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      totalPages: (json['total_pages'] as num?)?.toInt() ?? 0,
      totalResults: (json['total_results'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MovieResultImplToJson(_$MovieResultImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
      'total_results': instance.totalResults,
    };
