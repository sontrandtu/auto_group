import 'package:auto_group/res.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);
  static String routeName = "/main/account";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: 200,
                height: 100,
                padding: const EdgeInsets.all(20),
                color: kPrimaryColor,
                child: SvgPicture.asset(
                  Res.logo_auto_group,
                  width: 100,
                  height: 100,
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Tài khoản",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
