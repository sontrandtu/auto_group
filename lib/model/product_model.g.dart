// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      listColors: (json['listColors'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      listLinkVideo: (json['listLinkVideo'] as List<dynamic>?)
          ?.map((e) => Map<String, String>.from(e as Map))
          .toList(),
      id: json['id'] as String?,
      productName: json['productName'] as String?,
      descriptionProduct: json['descriptionProduct'] as String?,
      price: json['price'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      productInformation:
          (json['productInformation'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      rating: (json['rating'] as num?)?.toDouble(),
      quantityReview: json['quantityReview'] as int?,
      favorite: json['favorite'] as bool?,
      km: (json['km'] as num?)?.toDouble(),
      location: json['location'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'productName': instance.productName,
      'descriptionProduct': instance.descriptionProduct,
      'price': instance.price,
      'images': instance.images,
      'productInformation': instance.productInformation,
      'listColors': instance.listColors,
      'location': instance.location,
      'km': instance.km,
      'rating': instance.rating,
      'favorite': instance.favorite,
      'quantityReview': instance.quantityReview,
      'listLinkVideo': instance.listLinkVideo,
    };
