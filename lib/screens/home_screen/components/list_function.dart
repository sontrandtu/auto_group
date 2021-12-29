import 'package:auto_group/page_routes.dart';
import 'package:auto_group/utils/toast_utils.dart';
import 'package:flutter/material.dart';

import 'function_card.dart';

class ListFunction extends StatelessWidget {
  const ListFunction({
    Key? key,
    required this.demoDataGrid,
  }) : super(key: key);

  final List<Map<String, String>> demoDataGrid;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 10, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FunctionCard(
                title: demoDataGrid[0]["title"],
                pathImage: demoDataGrid[0]["image"],
                onTap: () {
                  showMessage("Đã click");
                },
              ),
              FunctionCard(
                title: demoDataGrid[1]["title"],
                pathImage: demoDataGrid[1]["image"],
                onTap: () {showMessage("Đã click");},
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FunctionCard(
                title: demoDataGrid[2]["title"],
                pathImage: demoDataGrid[2]["image"],
                onTap: () => Navigator.of(context, rootNavigator: true).pushNamed(PageRoutes.registerTestDrivePage),
              ),
              FunctionCard(
                title: demoDataGrid[3]["title"],
                pathImage: demoDataGrid[3]["image"],
                onTap: () {showMessage("Đã click");},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
