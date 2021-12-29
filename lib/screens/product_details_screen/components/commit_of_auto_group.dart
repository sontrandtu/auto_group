import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class CommitOfAutoGroup extends StatelessWidget {
  const CommitOfAutoGroup({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            "Cam kết của Auto Group",
            style: TextStyle(
              fontFamily: 'SVN-Arial3',
              color: kPrimaryColor,
              fontSize: 20,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "Hãng xe xuất xứ từ nước Đức - Audi Q3 2016 thực sự rất được lòng người hâm mộ xe sang nói chung và xe Audi nói riêng nhờ những điểm nổi bật từ thiết kế bên ngoài đến động cơ vận hành.",
            style: TextStyle(
              fontFamily: 'SVN-Arial3',
              color: Color(0xff000000),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 10),
          Text(
            "Hãng xe xuất xứ từ nước Đức - Audi Q3 2016 thực sự rất được lòng người hâm mộ xe sang nói chung và xe Audi nói riêng nhờ những điểm nổi bật từ thiết kế bên ngoài đến động cơ vận hành.",
            style: TextStyle(
              fontFamily: 'SVN-Arial3',
              color: Color(0xff000000),
              fontSize: 14,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }
}