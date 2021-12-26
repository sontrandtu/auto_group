import 'package:auto_group/model/product_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'discount_model.g.dart';

@JsonSerializable()
class ProductDiscount {
  final int? id;
  final Product? product;
  final int? discountPercent;
  final String? discountPrice;

  ProductDiscount({
    this.id,
    this.product,
    this.discountPercent,
    this.discountPrice,
  });
  factory ProductDiscount.fromJson(Map<String, dynamic> json) => _$ProductDiscountFromJson(json);
  Map<String, dynamic> toJson() =>_$ProductDiscountToJson(this);
}
