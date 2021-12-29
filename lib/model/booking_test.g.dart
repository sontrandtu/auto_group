// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingTest _$BookingTestFromJson(Map<String, dynamic> json) => BookingTest(
      id: json['id'] as String?,
      fullName: json['fullName'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      ownCar: json['ownCar'] as bool?,
    );

Map<String, dynamic> _$BookingTestToJson(BookingTest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'gender': instance.gender,
      'ownCar': instance.ownCar,
    };
