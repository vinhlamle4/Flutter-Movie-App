import 'package:flutter/material.dart';
import 'package:movie_app/config/border_radius.dart';
import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/data/secret/secret.dart';
import 'package:movie_app/extension/padding_extension.dart';
import 'package:movie_app/extension/text_style_extension.dart';
import 'package:movie_app/theme/font_size.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/theme/my_text_style.dart';
import 'package:movie_app/utils/app_color.dart';
import 'package:movie_app/ui/common/cache_image.dart';
import 'package:movie_app/ui/common/raing_view.dart';
import 'package:movie_app/utils/constans.dart';

class MovieList extends StatelessWidget {
  const MovieList({
    Key? key,
    required this.movieTitle,
    required this.movies,
    required this.onItemTap,
    required this.seeMoreTap,
  }) : super(key: key);

  final String movieTitle;
  final List<Movie> movies;
  final Function(Movie) onItemTap;
  final Function() seeMoreTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              movieTitle,
              style: MyTextStyle.title.bold(),
            ).paddingV(value: LayoutSize.pt24),
            Material(
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadiusUtils.circular8(),
                onTap: () => seeMoreTap(),
                child: Text(
                  "See more",
                  style: MyTextStyle.subContent.bold(),
                ).paddingAll(value: LayoutSize.pt8),
              ),
            )
          ],
        ),
        //_buildHorizontalMovies(items),
        Expanded(child: _buildHorizontalListView())
      ],
    );
  }

  Widget _buildHorizontalListView() {
    return ListView.separated(
      itemCount: movies.length,
      cacheExtent: Constants.defaultCacheExtent,
      physics: const ClampingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) => const SizedBox(width: LayoutSize.pt16),
      itemBuilder: (context, index) {
        final movie = movies[index];
        return _buildMovieItem(movie, context);
      },
    );
  }

  Widget _buildMovieItem(Movie movie, BuildContext context) {
    return Hero(
      tag: "$movieTitle${movie.id}",
      child: Card(
        color: AppColor.background,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusUtils.circular16(),
        ),
        child: Stack(
          children: [
            AspectRatio(
              aspectRatio: Constants.defaultImageRatio,
              child: ClipRRect(
                borderRadius: BorderRadiusUtils.circular16(),
                child: CacheImage(
                  imgUrl: "${Secret.imageUrl}${movie.posterPath}",
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: AppColor.blackOpacity8,
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(LayoutSize.pt16),
                          bottomRight: Radius.circular(LayoutSize.pt16),
                        ),
                      ),
                      child: _buildMovieInformation(movie),
                    ),
                  ),
                ),
              ),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () => onItemTap(movie),
                  borderRadius: BorderRadiusUtils.circular16(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMovieInformation(Movie movie) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${movie.title} (${movie.getReleaseYear()})",
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: FontSize.pt16, fontWeight: FontWeight.bold),
        ),
        RatingView(initRating: movie.voteAverage / 2).paddingV(value: LayoutSize.pt8),
      ],
    ).paddingAll(value: LayoutSize.pt8);
  }
}
