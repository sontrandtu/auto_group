import 'package:flutter/material.dart';

import 'card_support.dart';

class ListSupport extends StatelessWidget {

  const ListSupport({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.topLeft,
          child: const Text(
            "Bán xe kèm trách nhiệm",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20,right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Column(
                children: [
                  CardSupport(
                    onTap: (){},
                    icon: const Icon(
                      Icons.contact_support_outlined,
                      size: 38,
                    ),
                    title: "Support 24/24",
                  ),
                  CardSupport(
                    onTap: (){},
                    icon: const Icon(
                      Icons.gavel_outlined,
                      size: 38,
                    ),
                    title: "Bảo dưỡng tại oto +",
                  ),
                ],
              ),
              Column(
                children: [
                  CardSupport(
                    onTap: () {},
                    icon: const Icon(
                      Icons.headset_mic_outlined ,
                      size: 38,
                    ),
                    title: "Tư vấn kĩ thuật",
                  ),
                  const CardSupport(
                    icon: Icon(
                      Icons.checklist,
                      size: 38,
                    ),
                    title: "Minh bạch thông tin",
                  ),
                ],
              ),
              Column(
                children: [
                  CardSupport(
                    onTap: () {},
                    icon: const Icon(
                      Icons.directions_car_outlined,
                      size: 38,
                    ),
                    title: "Tìm xe 4.0",
                  ),
                  CardSupport(
                    onTap: (){},
                    icon: const Icon(
                      Icons.auto_fix_high_outlined,
                      size: 38,
                    ),
                    title: "Sửa chữa nhanh",
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}