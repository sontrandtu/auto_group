import 'package:auto_group/screens/installment_consulting_screen/installment_consulting_screen.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class ListSelect extends StatelessWidget {
  const ListSelect({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 20,
      bottom: 30,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.calendar_today_outlined, color: kSecondaryColor),
                  SizedBox(width: 10),
                  Text(
                    "Đặt lịch hẹn",
                    style: TextStyle(
                      inherit: false,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Container(
              height: 60,
              width: 180,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.contact_support_outlined,
                    color: kSecondaryColor,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Tư vấn chọn xe",
                    style: TextStyle(
                      inherit: false,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: kSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(
                  context, InstallmentConsultingScreen.routeName),
              child: Container(
                height: 60,
                width: 180,
                decoration: BoxDecoration(
                    color: const Color(0xFFFD5555),
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.payment_outlined, color: kSecondaryColor),
                    SizedBox(width: 10),
                    Text(
                      "Tư vấn trả góp",
                      style: TextStyle(
                        inherit: false,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
