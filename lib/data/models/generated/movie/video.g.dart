// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../movie/video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Video _$$_VideoFromJson(Map<String, dynamic> json) => _$_Video(
      id: json['id'] as String? ?? "",
      name: json['name'] as String? ?? "",
      key: json['key'] as String? ?? "",
      site: json['site'] as String? ?? "",
      size: json['size'] as int? ?? 0,
      type: json['type'] as String? ?? "",
      official: json['official'] as bool? ?? false,
      publishedAt: json['published_at'] as String? ?? "",
    );

Map<String, dynamic> _$$_VideoToJson(_$_Video instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'key': instance.key,
      'site': instance.site,
      'size': instance.size,
      'type': instance.type,
      'official': instance.official,
      'published_at': instance.publishedAt,
    };
