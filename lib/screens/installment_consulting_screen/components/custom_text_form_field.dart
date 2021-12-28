import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.hinText,
    this.titleText,
    this.validator,
    this.controller,
    this.inputType,
  }) : super(key: key);

  final String? hinText;
  final String? titleText;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final TextInputType? inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              titleText!,
              style: const TextStyle(
                fontFamily: 'SVN-Arial3',
                color: Color(0xff000000),
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Color(0x30000000),
                  offset: Offset(0, 2),
                  blurRadius: 3,
                  spreadRadius: 0,
                )
              ],
            ),
            child: TextFormField(
              controller: controller,
              validator: validator,
              autofocus: false,
              keyboardType: inputType,
              decoration: InputDecoration(
                hintText: hinText!,
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: kSecondaryColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: kSecondaryColor),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: kSecondaryColor),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: const BorderSide(color: kSecondaryColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
