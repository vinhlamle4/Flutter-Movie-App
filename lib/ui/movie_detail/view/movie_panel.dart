import 'dart:ui';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/config/border_radius.dart';
import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/data/models/movie/video.dart';
import 'package:movie_app/extension/padding_extension.dart';
import 'package:movie_app/extension/text_style_extension.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/theme/my_text_style.dart';
import 'package:movie_app/utils/app_color.dart';
import 'package:movie_app/utils/enum.dart';
import 'package:movie_app/ui/common/chip_row.dart';
import 'package:movie_app/ui/common/raing_view.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class MoviePanel extends StatelessWidget {
  const MoviePanel({
    Key? key,
    required this.movie,
    required this.panelController,
    required this.onWatchBtnTap,
  }) : super(key: key);

  final Movie movie;
  final PanelController panelController;
  final Function(Video) onWatchBtnTap;

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      controller: panelController,
      maxHeight: MediaQuery.of(context).size.height * 0.6,
      minHeight: MediaQuery.of(context).size.height * 0.08,
      defaultPanelState: PanelState.OPEN,
      isDraggable: true,
      backdropEnabled: false,
      backdropOpacity: 0,
      backdropColor: Colors.transparent,
      color: Colors.transparent,
      borderRadius: BorderRadiusUtils.verticalTop48(),
      panel: _buildPanel(),
    );
  }

  Container _buildPanel() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadiusUtils.verticalTop48(),
      ),
      child: ClipRRect(
        borderRadius: BorderRadiusUtils.verticalTop48(),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 20,
                sigmaY: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.blackOpacity1,
                  borderRadius: BorderRadiusUtils.verticalTop48(),
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: _button(panelController),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: _contentPanel(),
                  ),
                ),
                if (movie.videos.isHaveYoutubeTrailer()) ...[
                  _movieButton(
                    "Watch trailer",
                    () {
                      final video = movie.videos.results.firstWhereOrNull(
                          (element) =>
                              element.type == VideoType.trailer.name &&
                              element.site == VideoSiteType.youtube.name);
                      onWatchBtnTap(video!);
                    },
                  ).paddingEdge(bottom: LayoutSize.pt24),
                ]
              ],
            ).paddingH(value: LayoutSize.pt32),
          ],
        ),
      ),
    );
  }

  Widget _button(PanelController panelController) {
    return GestureDetector(
      onTap: () {
        if (panelController.panelPosition == 1) {
          panelController.close();
        } else {
          panelController.open();
        }
      },
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(LayoutSize.pt16),
        child: Container(
          width: LayoutSize.pt60,
          height: LayoutSize.pt4,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.4),
            borderRadius: BorderRadiusUtils.circular16(),
          ),
        ),
      ),
    );
  }

  Column _contentPanel() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movie.title,
          style: MyTextStyle.title.bold(),
        ).paddingEdge(bottom: LayoutSize.pt4),
        Text(
          movie.getReleaseYear(),
          style: MyTextStyle.content,
        ).paddingEdge(bottom: LayoutSize.pt8),
        Row(
          children: [
            RatingView(
              initRating: movie.voteAverage / 2,
              itemSize: LayoutSize.pt32,
            ),
            Text("(${movie.voteCount} voted)").paddingEdge(left: LayoutSize.pt16),
          ],
        ).paddingEdge(bottom: LayoutSize.pt16),
        ChipRow(items: movie.genres.map((e) => e.name).toList())
            .paddingEdge(bottom: LayoutSize.pt16),
        Text(
          movie.overview,
          style: MyTextStyle.content,
        ).paddingEdge(bottom: LayoutSize.pt32),
      ],
    );
  }

  Widget _movieButton(String label, VoidCallback onTap) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadiusUtils.circular16(),
            ),
          ),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: TextStyle(color: AppColor.onPrimary),
        ),
      ),
    );
  }
}
