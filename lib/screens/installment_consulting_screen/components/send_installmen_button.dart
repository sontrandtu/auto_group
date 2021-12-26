import 'package:auto_group/components/custom_elevate_button.dart';
import 'package:auto_group/theme/config.dart';
import 'package:flutter/material.dart';

class SendInstallmentButton extends StatelessWidget {
  const SendInstallmentButton({
    Key? key,
    this.formKey,
    this.totalValueController,
    this.loanAmountController,
    this.loanTermController,
    this.interestRateFirstYearController,
    this.interestRateSecondYearController,
  }) : super(key: key);

  final GlobalKey<FormState>? formKey;
  final TextEditingController? totalValueController;
  final TextEditingController? loanAmountController;
  final TextEditingController? loanTermController;
  final TextEditingController? interestRateFirstYearController;
  final TextEditingController? interestRateSecondYearController;

  @override
  Widget build(BuildContext context) {
    return CustomElevateButton(
      title: "Gửi",
      onPress: () {
        if(formKey!.currentState!.validate()){
          ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);
        }
      },
      padding: const EdgeInsets.symmetric(horizontal: 165, vertical: 15),
    );
  }
}
