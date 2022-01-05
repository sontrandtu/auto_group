import 'package:auto_group/base/base_view_model.dart';
import 'package:auto_group/response/booking_test_response.dart';

class RegisterTestDriverViewModel extends BaseViewModel {
  final BookingTestResponse bookingTestResponse;

  RegisterTestDriverViewModel(this.bookingTestResponse)
      : super(bookingTestResponse);

  String fullName = "Trần Văn Sơn";
  String dateOfBirth = "08/02/2000";
  String phoneNumber = "0367759794";
  String email = "sontran2k37@gmail.com";
  String gender = "male";
  bool ownCar = true;

  bookingTestPostData(
      {ErrorCallback? errorCallback, SuccessCallback? successCallback}) async {
    setLoading = true;
    final response = await bookingTestResponse.postBooking(
      fullName: fullName,
      dateOfBirth: dateOfBirth,
      phoneNumber: phoneNumber,
      email: email,
      gender: gender,
      ownCar: ownCar,
    );
    if (response.isOk) {
      successCallback?.call("Đặt lịch thành công!");
    } else {
      errorCallback?.call(response.message);
    }
    notifyListeners();
    setLoading = false;
  }
}