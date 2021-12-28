import 'package:auto_group/screens/installment_consulting_screen/components/custom_text_form_field.dart';
import 'package:auto_group/screens/installment_consulting_screen/components/send_installmen_button.dart';
import 'package:flutter/material.dart';

class FormInstallmentConsulting extends StatefulWidget {
  const FormInstallmentConsulting({
    Key? key,
  }) : super(key: key);

  @override
  State<FormInstallmentConsulting> createState() =>
      _FormInstallmentConsultingState();
}

class _FormInstallmentConsultingState extends State<FormInstallmentConsulting> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _totalValueController = TextEditingController();
  final TextEditingController _loanAmountController = TextEditingController();
  final TextEditingController _loanTermController = TextEditingController();
  final TextEditingController _interestRateFirstYearController =
  TextEditingController();
  final TextEditingController _interestRateSecondYearController =
  TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          CustomTextFormField(
            inputType: TextInputType.number,
            controller: _totalValueController,
            hinText: "Nhập giá trị tổng cộng (vnđ)",
            titleText: "Giá trị tổng cộng (vnđ)",
            validator: (value) {
              if (value!.isEmpty) {
                return "không được để trống";
              }
              return null;
            },
          ),
          CustomTextFormField(
            inputType: TextInputType.number,
            controller: _loanAmountController,
            hinText: "SỐ tiền vay (vnđ)",
            titleText: "Nhập số tiền vay (vnđ)",
            validator: (value) {
              if (value!.isEmpty) {
                return "không được để trống";
              }
              return null;
            },
          ),
          CustomTextFormField(
            inputType: TextInputType.text,
            controller: _loanTermController,
            hinText: "Nhập thời hạn vay",
            titleText: "Thời hạn vay",
            validator: (value) {
              if (value!.isEmpty) {
                return "không được để trống";
              }
              return null;
            },
          ),
          CustomTextFormField(
            inputType: TextInputType.number,
            controller: _interestRateFirstYearController,
            hinText: "Nhập lãi suất năm đầu (%năm)",
            titleText: "Lãi suất năm đầu (%năm)",
            validator: (value) {
              if (value!.isEmpty) {
                return "không được để trống";
              }
              return null;
            },
          ),
          CustomTextFormField(
            inputType: TextInputType.number,
            controller: _interestRateSecondYearController,
            hinText: "Nhập lãi suất năm thứ 2 (%năm)",
            titleText: "Lãi suất năm thứ 2 (vnđ)",
            validator: (value) {
              if (value!.isEmpty) {
                return "không được để trống";
              }
              return null;
            },
          ),
          const SizedBox(height: 30),
          SendInstallmentButton(
            formKey: _formKey,
            totalValueController: _totalValueController,
            loanAmountController: _loanAmountController,
            loanTermController: _loanTermController,
            interestRateFirstYearController: _interestRateFirstYearController,
            interestRateSecondYearController: _interestRateSecondYearController,
          ),
        ],
      ),
    );
  }
}