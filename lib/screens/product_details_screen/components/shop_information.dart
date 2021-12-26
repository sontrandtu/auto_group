import 'package:auto_group/model/agency_model.dart';
import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class ShopInformation extends StatelessWidget {
  const ShopInformation({
    Key? key,
    this.onTap,
    this.agency,
  }) : super(key: key);

  final GestureTapCallback? onTap;
  final Agency? agency;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        width: double.infinity,
        color: const Color(0xffe6e6e6),
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(agency!.urlAvatar.toString()),
                      radius: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            agency!.nameAgency.toString(),
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xff000000),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                          Text(
                            agency!.operationStatus.toString(),
                            style: const TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xff000000),
                              fontSize: 13,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: onTap,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: kPrimaryColor,
                      ),
                    ),
                    child: const Text(
                      "Xem shop",
                      style: TextStyle(
                        fontFamily: 'SVN-Arial3',
                        color: kPrimaryColor,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        "${agency!.quantityProduct}",
                        style: const TextStyle(
                          fontFamily: 'SVN-Arial3',
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Sản Phẩm",
                        style: TextStyle(
                          fontFamily: 'SVN-Arial3',
                          color: Color(0xff0c0c0c),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        "${agency!.rating}",
                        style: const TextStyle(
                          fontFamily: 'SVN-Arial3',
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Đánh giá",
                        style: TextStyle(
                          fontFamily: 'SVN-Arial3',
                          color: Color(0xff0c0c0c),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Text(
                        "${agency!.feedbackChat}",
                        style: const TextStyle(
                          fontFamily: 'SVN-Arial3',
                          color: kPrimaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        "Phản hồi chat",
                        style: TextStyle(
                          fontFamily: 'SVN-Arial3',
                          color: Color(0xff0c0c0c),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
