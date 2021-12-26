// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'agency_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Agency _$AgencyFromJson(Map<String, dynamic> json) => Agency(
      nameAgency: json['nameAgency'] as String?,
      urlAvatar: json['urlAvatar'] as String?,
      rating: (json['rating'] as num?)?.toDouble(),
      quantityProduct: json['quantityProduct'] as int?,
      feedbackChat: (json['feedbackChat'] as num?)?.toDouble(),
      operationStatus: json['operationStatus'] as String?,
    );

Map<String, dynamic> _$AgencyToJson(Agency instance) => <String, dynamic>{
      'nameAgency': instance.nameAgency,
      'urlAvatar': instance.urlAvatar,
      'rating': instance.rating,
      'quantityProduct': instance.quantityProduct,
      'feedbackChat': instance.feedbackChat,
      'operationStatus': instance.operationStatus,
    };
