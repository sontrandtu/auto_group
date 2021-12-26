import 'package:auto_group/screens/installment_consulting_screen/components/form_installment_consulting.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class InstallmentConsultingScreen extends StatelessWidget {
  static String routeName = "/installment_consulting";

  const InstallmentConsultingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tư vấn trả góp",
          style: TextStyle(
            fontFamily: 'SVN-Arial3',
            color: kSecondaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        backgroundColor: kPrimaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        toolbarHeight: 102,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10),
          child: FormInstallmentConsulting(),
        ),
      ),
    );
  }
}