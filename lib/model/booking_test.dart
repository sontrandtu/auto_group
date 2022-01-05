import 'package:json_annotation/json_annotation.dart';

part 'booking_test.g.dart';

@JsonSerializable()
class BookingTest {
  final String? fullName;
  final String? dateOfBirth;
  final String? phoneNumber;
  final String? email;
  final String? gender;
  final bool? ownCar;

  BookingTest({
    this.fullName,
    this.dateOfBirth,
    this.phoneNumber,
    this.email,
    this.gender,
    this.ownCar
});
  factory BookingTest.fromJson(Map<String, dynamic> json) => _$BookingTestFromJson(json);
  Map<String, dynamic> toJson() =>_$BookingTestToJson(this);
}