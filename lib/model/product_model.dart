import 'package:json_annotation/json_annotation.dart';
part 'product_model.g.dart';
@JsonSerializable()
class Product {
  final int? id;
  final String? productName;
  final String? descriptionProduct;
  final String? price;
  final List<String>? images;
  final Map<String, String>? productInformation;
  final String? location;
  final double? km;
  final double? rating;
  final bool? favorite;
  final int? quantityReview;
  final List<Map<String, String>>? listLinkVideo;

  Product({
    this.listLinkVideo,
    this.id,
    this.productName,
    this.descriptionProduct,
    this.price,
    this.images,
    this.productInformation,
    this.rating,
    this.quantityReview,
    this.favorite,
    this.km,
    this.location,
  });
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() =>_$ProductToJson(this);
}
