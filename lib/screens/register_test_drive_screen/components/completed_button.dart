import 'package:auto_group/components/custom_elevate_button.dart';
import 'package:auto_group/utils/toast_utils.dart';
import 'package:flutter/material.dart';
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
    return CustomElevateButton(
      title: "Hoàn tất",
      onPress: () async {
        if (formKey!.currentState!.validate()) {
          print("${fullNameController!.text}\n");
          print("${phoneNumberController!.text}\n");
          print("${emailController!.text}\n");
          print("${dateOfBirthController!.text}\n");
          print(gender!.gender);
          print(ownCar!.ownCar);
          showSuccessMessage("Đã gửi thành công");
        }
      },
      padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 17),
    );
  }
}
