import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/utils/app_color.dart';

class PrimaryLoadingIndicator extends StatelessWidget {
  const PrimaryLoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: LayoutSize.pt32,
        child: LoadingIndicator(
            indicatorType: Indicator.ballBeat,
            colors: [AppColor.primary],
            pathBackgroundColor: Colors.black),
      ),
    );
  }
}
