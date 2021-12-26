import 'package:auto_group/components/text_with_text_button.dart';
import 'package:auto_group/model/car_news_model.dart';
import 'package:flutter/material.dart';

import '../../../theme/config.dart';
import 'card_car_news.dart';

class ListCarNews extends StatelessWidget {
  const ListCarNews({
    Key? key,
    required this.demoCarNews,
  }) : super(key: key);

  final List<CarNews>? demoCarNews;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: TextWithTextButton(
            titleText: "Tin tức",
            textButton: "Xem tất cả",
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(snackBarDemo);
            },
          ),
        ),
        Column(
          children: [
            ...List.generate(
              demoCarNews!.length,
              (index) => CardCarNews(carNews: demoCarNews![index]),
            ),
          ],
        ),
      ],
    );
  }
}
