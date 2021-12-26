import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'components/side_bar_item.dart';

class SideBarScreen extends StatelessWidget {
  static String routeName = "/side_bar";

  const SideBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width * 0.8,
            color: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 57),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  SvgPicture.asset(
                    "assets/icons/logo_auto_group.svg",
                    width: 150,
                  ),
                  const SizedBox(height: 26),
                  SideBarItem(
                    icon: Icons.perm_identity_rounded,
                    onTap: () {},
                    title: "Về chúng tôi",
                  ),
                  SideBarItem(
                    icon: Icons.monetization_on_outlined,
                    onTap: () {},
                    title: "Định giá",
                  ),
                  SideBarItem(
                    icon: Icons.account_circle_outlined,
                    onTap: () {},
                    title: "Đấu giá",
                  ),
                  SideBarItem(
                    icon: Icons.account_circle_outlined,
                    onTap: () {},
                    title: "Đăng tin",
                  ),
                  SideBarItem(
                    icon: Icons.search,
                    onTap: () {},
                    title: "Kinh nghiệm",
                  ),
                  SideBarItem(
                    icon: Icons.wifi_calling_3_outlined,
                    onTap: () {},
                    title: "Liên hệ",
                  ),
                  SideBarItem(
                    icon: Icons.notifications_none_sharp,
                    onTap: () {},
                    title: "Thông báo",
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              left: 10,
              top: 25,
              child: IconButton(
                icon: const Icon(
                  Icons.clear_outlined,
                  color: kSecondaryColor,
                ),
                onPressed: () {},
              )),
        ],
      );
  }
}
