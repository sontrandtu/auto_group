// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarNews _$CarNewsFromJson(Map<String, dynamic> json) => CarNews(
      id: json['id'] as int?,
      urlImage: json['urlImage'] as String?,
      title: json['title'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CarNewsToJson(CarNews instance) => <String, dynamic>{
      'id': instance.id,
      'urlImage': instance.urlImage,
      'title': instance.title,
      'rating': instance.rating,
    };
