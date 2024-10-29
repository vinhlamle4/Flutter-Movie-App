// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../movie/video_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$VideoResultImpl _$$VideoResultImplFromJson(Map<String, dynamic> json) =>
    _$VideoResultImpl(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$VideoResultImplToJson(_$VideoResultImpl instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
