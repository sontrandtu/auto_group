import 'package:auto_group/theme/color.dart';
import 'package:flutter/material.dart';

class VideoCard extends StatelessWidget {
  const VideoCard(
      {Key? key,
      @required this.videoLength,
      @required this.pathImage,
      @required this.tapFavorite,
      @required this.tapPlay,
      @required this.carName,
      @required this.subTitle})
      : super(key: key);

  final String? videoLength;
  final String? pathImage;
  final GestureTapCallback? tapFavorite;
  final GestureTapCallback? tapPlay;
  final String? carName;
  final String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: 310,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: 338,
              height: 318,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(53)),
              child: Image.asset(
                pathImage!,
                fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 24,
              top: 19,
              child: Container(
                alignment: Alignment.center,
                width: 81,
                height: 36,
                decoration: BoxDecoration(
                  color: const Color(0xff8d8d8d),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Text(
                  videoLength!,
                  style: const TextStyle(
                    fontFamily: 'SVN-Arial3',
                    color: kSecondaryColor,
                    fontSize: 17,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
            Positioned(
              right: 35,
              top: 13,
              child: SizedBox(
                width: 34.5,
                height: 31.86126708984375,
                child: IconButton(
                  onPressed: tapFavorite!,
                  icon: const  Icon(
                    Icons.favorite_border_outlined,
                    color: kPrimaryColor,
                    size: 40,
                  ),
                ),
              ),
            ),
            IconButton(
              alignment: Alignment.center,
              onPressed: tapPlay,
              icon: const Icon(
                Icons.play_circle_outline_outlined,
                color: kSecondaryColor,
                size: 50,
              ),
            ),
            Positioned(
              left: 24,
              top: 253,
              child: Container(
                width: 338,
                height: 318,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(41)),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "$carName\n",
                          style: const TextStyle(
                            fontFamily: 'SVN-Arial3',
                            color: kSecondaryColor,
                            fontSize: 21,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          )),
                      TextSpan(
                        text: subTitle!,
                        style: const TextStyle(
                          fontFamily: 'SVN-Arial3',
                          color: kSecondaryColor,
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
