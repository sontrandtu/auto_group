import 'package:flutter/material.dart';

const SnackBar snackBarDemo = SnackBar(
  content: Text(
    "Click",
    style: TextStyle(
      color: Color(0xFFFFFFFF),
    ),
  ),
  duration: Duration(seconds: 2),
  //backgroundColor: kPrimaryColor,
  behavior: SnackBarBehavior.floating,
);
