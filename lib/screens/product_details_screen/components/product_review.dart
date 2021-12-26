import 'package:auto_group/components/text_with_text_button.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';
import '../../../demo_data.dart';
import 'feedback_card.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductReview extends StatelessWidget {
  const ProductReview({
    Key? key,
    this.star,
    this.quantityReview,
  }) : super(key: key);

  final double? star;
  final int? quantityReview;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextWithTextButton(
          titleText: "Đánh giá sản phẩm",
          textButton: "Xem tất cả",
          onTap: () {},
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              RatingBar.builder(
                initialRating: star!,
                minRating: 0,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: kPrimaryColor,
                ),
                onRatingUpdate: (rating) {
                  print(rating);
                },
              ),
              const SizedBox(width: 10),
              Text("$star ($quantityReview review)"),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: FeedbackCard(
                  pathAvatar: "assets/images/black_car.png",
                  nameCustomer: "Thu Hằng",
                  time: "1 ngày trước",
                  star: "4,9",
                  feedbackContent:
                  "Thật quý biết bao BS tài đức vẹn toàn. Tôi mong đc gặp BS khám chữa bệnh cho tôi",
                  images: DemoData.demoDataImagesFeedback,
                ),
              ),
              FeedbackCard(
                pathAvatar: "assets/images/black_car.png",
                nameCustomer: "Thu Hằng",
                time: "1 ngày trước",
                star: "4,9",
                feedbackContent:
                "Thật quý biết bao BS tài đức vẹn toàn. Tôi mong đc gặp BS khám chữa bệnh cho tôi",
                images: DemoData.demoDataImagesFeedback,
              ),
              FeedbackCard(
                pathAvatar: "assets/images/black_car.png",
                nameCustomer: "Thu Hằng",
                time: "1 ngày trước",
                star: "4,9",
                feedbackContent:
                "Thật quý biết bao BS tài đức vẹn toàn. Tôi mong đc gặp BS khám chữa bệnh cho tôi",
                images: DemoData.demoDataImagesFeedback,
              ),
            ],
          ),
        ),
      ],
    );
  }
}