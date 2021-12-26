import 'package:auto_group/theme/config.dart';
import 'package:auto_group/screens/register_test_drive_screen/register_test_driver_screen.dart';
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
                  ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);
                },
              ),
              FunctionCard(
                title: demoDataGrid[1]["title"],
                pathImage: demoDataGrid[1]["image"],
                onTap: () {ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);},
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
                onTap: () => Navigator.pushNamed(context, RegisterTestDriveScreen.routeName),
              ),
              FunctionCard(
                title: demoDataGrid[3]["title"],
                pathImage: demoDataGrid[3]["image"],
                onTap: () {ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);},
              ),
            ],
          ),
        ),
      ],
    );
  }
}
