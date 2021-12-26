import 'package:auto_group/components/icon_with_text.dart';
import 'package:auto_group/model/car_news_model.dart';
import 'package:flutter/material.dart';

class CardCarNews extends StatelessWidget {
  const CardCarNews({
    Key? key,
    this.carNews,
  }) : super(key: key);

  final CarNews? carNews;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          width: double.infinity,
          child: Row(
            children: [
              Image.asset(carNews!.urlImage!),
              const SizedBox(width: 15),
              Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 248,
                    height: 39,
                    child: Text(
                      "${carNews!.title}",
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 8),
                  IconWithText(
                    icon: const Icon(Icons.star, color: Color(0xFFF9B733)),
                    text: "${carNews!.rating}",
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
