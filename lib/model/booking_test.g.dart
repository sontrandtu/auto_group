// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BookingTest _$BookingTestFromJson(Map<String, dynamic> json) => BookingTest(
      fullName: json['fullName'] as String?,
      dateOfBirth: json['dateOfBirth'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      ownCar: json['ownCar'] as bool?,
    );

Map<String, dynamic> _$BookingTestToJson(BookingTest instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'dateOfBirth': instance.dateOfBirth,
      'phoneNumber': instance.phoneNumber,
      'email': instance.email,
      'gender': instance.gender,
      'ownCar': instance.ownCar,
    };
