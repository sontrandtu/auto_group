import 'package:auto_group/components/custom_elevate_button.dart';
import 'package:auto_group/screens/register_test_drive_screen/register_test_driver_view_model.dart';
import 'package:auto_group/utils/toast_utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../enum.dart';

class CompletedButton extends StatelessWidget {
  const CompletedButton({
    Key? key,
    this.fullNameController,
    this.phoneNumberController,
    this.emailController,
    this.dateOfBirthController,
    this.formKey,
    this.gender,
    this.ownCar,
  }) : super(key: key);
  final GlobalKey<FormState>? formKey;
  final TextEditingController? fullNameController;
  final TextEditingController? phoneNumberController;
  final TextEditingController? emailController;
  final TextEditingController? dateOfBirthController;
  final SelectGender? gender;
  final SelectOwnCar? ownCar;

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch()<RegisterTestDriverViewModel>();
    return CustomElevateButton(
      title: "Hoàn tất",
      onPress: () async {
        if (formKey!.currentState!.validate()) {
          viewModel.fullName = fullNameController!.text;
          viewModel.dateOfBirth = dateOfBirthController!.text;
          viewModel.phoneNumber = phoneNumberController!.text;
          viewModel.email = emailController!.text;
          viewModel.gender = gender!.gender;
          viewModel.ownCar = ownCar!.ownCar;
          viewModel.bookingTestPostData(errorCallback: (message){
            showMessage(message);
          }, successCallback: (value){
            showMessage(value);
          });
          print("${fullNameController!.text}\n");
          print("${phoneNumberController!.text}\n");
          print("${emailController!.text}\n");
          print("${dateOfBirthController!.text}\n");
          print(gender!.gender);
          print(ownCar!.ownCar);
          //showSuccessMessage("Gửi thành công");
        }
      },
      padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 17),
    );
  }
}
