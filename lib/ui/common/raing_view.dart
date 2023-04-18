import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/utils/app_color.dart';


class RatingView extends StatelessWidget {
  const RatingView({
    Key? key,
    required this.initRating,
    this.onRatingUpdate,
    this.itemSize = LayoutSize.pt16,
  }) : super(key: key);

  final double initRating;
  final double itemSize;
  final Function(double)? onRatingUpdate;

  @override
  Widget build(BuildContext context) {
    return RatingBar(
      itemCount: 5,
      itemSize: itemSize,
      allowHalfRating: true,
      tapOnlyMode: false,
      updateOnDrag: true,
      initialRating: initRating,
      ignoreGestures: onRatingUpdate == null,
      ratingWidget: RatingWidget(
        full: Icon(
          Icons.star,
          color: AppColor.primary,
        ),
        half: Icon(
          Icons.star_half_rounded,
          color: AppColor.primary,
        ),
        empty: Icon(
          Icons.star_border,
          color: AppColor.primary,
        ),
      ),
      onRatingUpdate: onRatingUpdate != null ? onRatingUpdate! : (value) {},
    );
  }
}
