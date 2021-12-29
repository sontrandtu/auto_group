import 'package:json_annotation/json_annotation.dart';

part 'agency_model.g.dart';

@JsonSerializable()
class Agency {
  final String? id;
  final String? nameAgency;
  final String? urlAvatar;
  final double? rating;
  final int? quantityProduct;
  final double? feedbackChat;
  final String? operationStatus;

  Agency({
    this.id,
    this.nameAgency,
    this.urlAvatar,
    this.rating,
    this.quantityProduct,
    this.feedbackChat,
    this.operationStatus,
  });
  factory Agency.fromJson(Map<String, dynamic> json) => _$AgencyFromJson(json);
  Map<String, dynamic> toJson() =>_$AgencyToJson(this);
}
