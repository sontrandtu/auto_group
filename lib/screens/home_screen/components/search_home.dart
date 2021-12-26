import 'package:auto_group/theme/color.dart';
import 'package:auto_group/theme/config.dart';
import 'package:auto_group/model/category_model.dart';
import 'package:flutter/material.dart';

import 'car_type.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({
    Key? key,
    this.categories,
  }) : super(key: key);

  final List<Category>? categories;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              color: Colors.black,
            ),
            Container(
              width: double.infinity,
              height: 70,
              //color: Colors.red,
              color: Theme.of(context).scaffoldBackgroundColor,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  style: const TextStyle(
                      color: kSecondaryColor
                  ),
                  decoration: InputDecoration(
                    suffixIcon: const Icon(
                      Icons.search,
                      color: kSecondaryColor,
                    ),
                    hintText: "Tìm kiếm",
                    fillColor: Colors.white.withOpacity(0.19),
                    hintStyle: const TextStyle(color: kSecondaryColor),
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 18),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide:
                      BorderSide(color: Colors.white.withOpacity(0.19)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      borderSide:
                      BorderSide(color: Colors.white.withOpacity(0.19)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(
                      categories!.length,
                          (index) => CarType(
                            onTap: (){
                              ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);
                            },
                        category: categories![index],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
