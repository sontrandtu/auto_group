import 'package:auto_group/components/custom_elevate_button.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class CompletedButton extends StatelessWidget {
  const CompletedButton({
    Key? key,
    @required this.fullNameController,
    @required this.phoneNumberController,
    @required this.emailController,
    @required this.dateOfBirthController,
    @required this.formKey,
  }) : super(key: key);
  final GlobalKey<FormState>? formKey;
  final TextEditingController? fullNameController;
  final TextEditingController? phoneNumberController;
  final TextEditingController? emailController;
  final TextEditingController? dateOfBirthController;

  @override
  Widget build(BuildContext context) {
    return CustomElevateButton(
      title: "Hoàn tất",
      onPress: () async {
        if(formKey!.currentState!.validate()){
          Dio _dio = Dio();
          Response response = await _dio.get("https://61bc30dfd8542f0017824600.mockapi.io/api/categories");
          print(response.data);
        }
      },
      padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 17),
    );
  }
}