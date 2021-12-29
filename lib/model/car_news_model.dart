import 'package:json_annotation/json_annotation.dart';
part 'car_news_model.g.dart';
@JsonSerializable()
class CarNews {
  final String? id;
  final String? urlImage;
  final String? title;
  final double? rating;

  CarNews({
    this.id,
    this.urlImage,
    this.title,
    this.rating,
  });
  factory CarNews.fromJson(Map<String, dynamic> json) => _$CarNewsFromJson(json);
  Map<String, dynamic> toJson() =>_$CarNewsToJson(this);
}
