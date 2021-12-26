import 'package:json_annotation/json_annotation.dart';
import 'dart:core';
import 'package:copy_with_extension/copy_with_extension.dart';
part 'category_model.g.dart';
@CopyWith(generateCopyWithNull: false)
@JsonSerializable(anyMap: true, includeIfNull: false)
class Category {
  final String? name;
  final String? pathLogo;
  final String? id;

  Category({
    this.id,
    this.pathLogo,
    this.name,
  });
  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);
  Map<String, dynamic> toJson() =>_$CategoryToJson(this);
}

