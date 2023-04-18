// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../movie/video_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VideoResult _$$_VideoResultFromJson(Map<String, dynamic> json) =>
    _$_VideoResult(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => Video.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_VideoResultToJson(_$_VideoResult instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
