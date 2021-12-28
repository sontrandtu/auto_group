import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../res.dart';


class HotlinePage extends StatelessWidget {
  const HotlinePage({Key? key}) : super(key: key);

  static String routeName = "/main/hotline";

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
              "Hotline",
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
