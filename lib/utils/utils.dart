import 'package:flutter/material.dart';
import 'package:movie_app/utils/app_color.dart';

class Utils {
  static showSnackBar(BuildContext context, String content) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(content),
        margin: const EdgeInsets.all(48),
        backgroundColor: AppColor.secondary,
      ),
    );
  }
}
