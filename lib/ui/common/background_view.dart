import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:movie_app/app_config.dart';
import 'package:movie_app/gen/assets.gen.dart';

class BackgroundView extends StatelessWidget {
  const BackgroundView({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AppConfig.background.isNotEmpty
              ? AppConfig.background
              : Assets.image.background.path),
          fit: BoxFit.fill,
        ),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 20,
          sigmaY: 20,
        ),
        child: child,
      ),
    );
  }
}
