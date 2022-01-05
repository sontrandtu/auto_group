import 'package:auto_group/components/custom_elevate_button.dart';
import 'package:auto_group/screens/register_test_drive_screen/register_test_driver_view_model.dart';
import 'package:auto_group/theme/color.dart';
import 'package:auto_group/enum.dart';
import 'package:auto_group/components/icon_with_text.dart';
import 'package:auto_group/components/rounded_text_form_field.dart';
import 'package:auto_group/utils/toast_utils.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class RegisterTestDriveScreen extends StatefulWidget {
  const RegisterTestDriveScreen({Key? key}) : super(key: key);

  @override
  State<RegisterTestDriveScreen> createState() =>
      _RegisterTestDriveScreenState();
}

class _RegisterTestDriveScreenState extends State<RegisterTestDriveScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  SelectGender _gender = SelectGender.female;
  SelectOwnCar _ownCar = SelectOwnCar.yes;

  @override
  void initState() {
    _dateOfBirthController.text = "";
    _fullNameController.text = "";
    _phoneNumberController.text = "";
    _emailController.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<RegisterTestDriverViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Đăng ký lái thử",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 29, horizontal: 18),
          child: Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Thông tin người đặt lịch",
                      style: TextStyle(
                        fontFamily: 'SVN-Arial3',
                        color: Color(0xff000000),
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    RoundedTextFormField(
                      inputType: TextInputType.text,
                      labelText: "Họ tên *",
                      icon: const Icon(Icons.edit),
                      controller: _fullNameController,
                      validator: (value) {
                        if (value.toString().length <= 7) {
                          return "Không được bỏ trống";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Ngày sinh không được bỏ trống";
                        }
                        return null;
                      },
                      controller: _dateOfBirthController,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.calendar_today_outlined),
                        labelText: "Ngày sinh *",
                      ),
                      onTap: () async {
                        DateTime date = DateTime(1900);
                        FocusScope.of(context).requestFocus(FocusNode());
                        date = (await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100)))!;
                        _dateOfBirthController.text =
                            DateFormat("dd/MM/yyyy").format(date);
                      },
                    ),
                    RoundedTextFormField(
                      inputType: TextInputType.number,
                      labelText: "Số điện thoại *",
                      icon: const Icon(Icons.call_outlined),
                      controller: _phoneNumberController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Không được bỏ trống";
                        }
                        return null;
                      },
                    ),
                    RoundedTextFormField(
                      inputType: TextInputType.emailAddress,
                      labelText: "Email *",
                      icon: const Icon(Icons.email_outlined),
                      controller: _emailController,
                      validator: (value) {
                        bool _isEmailValid = RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!);
                        if (!_isEmailValid) {
                          return "Email không hợp lệ";
                        }
                        return null;
                      },
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const IconWithText(
                              text: "Giới tính",
                              icon: Icon(Icons.person_outline),
                              style: TextStyle(
                                fontFamily: 'SVN-Arial3',
                                color: Color(0xff000000),
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: const Text(
                                  "Nữ",
                                  style: TextStyle(
                                    fontFamily: 'SVN-Arial3',
                                    color: Color(0xff000000),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                leading: Radio(
                                  value: SelectGender.female,
                                  groupValue: _gender,
                                  onChanged: (SelectGender? value) {
                                    setState(() {
                                      _gender = value!;
                                    });
                                  },
                                ),
                              ),
                            ),
                            Expanded(
                              child: ListTile(
                                title: const Text(
                                  "Nam",
                                  style: TextStyle(
                                    fontFamily: 'SVN-Arial3',
                                    color: Color(0xff000000),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                  ),
                                ),
                                leading: Radio(
                                  value: SelectGender.male,
                                  groupValue: _gender,
                                  onChanged: (SelectGender? value) {
                                    setState(() {
                                      _gender = value!;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Row(
                            children: [
                              const Text(
                                "Sở hữu xe:",
                                style: TextStyle(
                                  fontFamily: 'SVN-Arial3',
                                  color: Color(0xff000000),
                                  fontSize: 13,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                    "Có",
                                    style: TextStyle(
                                      fontFamily: 'SVN-Arial3',
                                      color: Color(0xff000000),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  leading: Radio(
                                    value: SelectOwnCar.yes,
                                    groupValue: _ownCar,
                                    onChanged: (SelectOwnCar? value) {
                                      setState(() {
                                        _ownCar = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: ListTile(
                                  title: const Text(
                                    "Không",
                                    style: TextStyle(
                                      fontFamily: 'SVN-Arial3',
                                      color: Color(0xff000000),
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      fontStyle: FontStyle.normal,
                                    ),
                                  ),
                                  leading: Radio(
                                    value: SelectOwnCar.no,
                                    groupValue: _ownCar,
                                    onChanged: (SelectOwnCar? value) {
                                      setState(() {
                                        _ownCar = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 50),
                      ],
                    ),
                  ],
                ),
              ),
              CustomElevateButton(
                title: "Hoàn tất",
                onPress: () async {
                  if (_formKey.currentState!.validate()) {
                    print("${_fullNameController.text}\n");
                    print("${_phoneNumberController.text}\n");
                    print("${_emailController.text}\n");
                    print("${_dateOfBirthController.text}\n");
                    print(_gender.gender);
                    print(_ownCar.ownCar);
                    viewModel.fullName = _fullNameController.text;
                    viewModel.dateOfBirth = _dateOfBirthController.text;
                    viewModel.phoneNumber = _phoneNumberController.text;
                    viewModel.email = _emailController.text;
                    viewModel.gender = _gender.gender;
                    viewModel.ownCar = _ownCar.ownCar;
                    viewModel.bookingTestPostData(errorCallback: (message) {
                      showMessage(message);
                    }, successCallback: (value) {
                      showMessage(value);
                    });
                  }
                },
                padding:
                    const EdgeInsets.symmetric(horizontal: 140, vertical: 17),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
