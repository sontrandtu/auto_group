import 'package:auto_group/components/text_with_text_button.dart';
import 'package:auto_group/model/agency_model.dart';
import 'package:flutter/material.dart';

import '../../../theme/config.dart';
import 'card_distributor.dart';

class ListDistributorCar extends StatelessWidget {
  const ListDistributorCar({
    Key? key,
    this.agents,
  }) : super(key: key);

  final List<Agency>? agents;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: TextWithTextButton(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);
            },
            titleText: "Đại lý xe",
            textButton: "Xem tất cả",
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                agents!.length,
                (index) => CardDistributor(
                  agency: agents![index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
