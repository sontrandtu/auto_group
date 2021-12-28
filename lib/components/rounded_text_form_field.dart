import 'package:flutter/material.dart';

class RoundedTextFormField extends StatelessWidget {
  const RoundedTextFormField({
    Key? key,
    @required this.labelText,
    @required this.icon,
    @required this.controller,
    this.inputType,
    this.validator,
  }) : super(key: key);
  final String? labelText;
  final Icon? icon;
  final TextEditingController? controller;
  final TextInputType? inputType;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        validator: validator,
        controller: controller,
        keyboardType: inputType,
        decoration: InputDecoration(
          prefixIcon: icon,
          focusColor: Colors.grey,
          labelText: labelText!,
        ),
      ),
    );
  }
}
