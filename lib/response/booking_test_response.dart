
import 'package:auto_group/api/api_response.dart';
import 'package:auto_group/model/booking_test.dart';
import 'package:auto_group/response/repository.dart';

class BookingTestResponse extends Repository{

  Future<ApiResponse<BookingTest>> postBooking({
    required String fullName,
    required String dateOfBirth,
    required String phoneNumber,
    required String email,
    required String gender,
    required bool ownCar,
  }) async {
    return apiClient!.postBookingTest(fullName, dateOfBirth, phoneNumber, email, gender, ownCar).wrap();
  }
}