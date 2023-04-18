import 'package:flutter/material.dart';
import 'package:movie_app/config/border_radius.dart';
import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/data/secret/secret.dart';
import 'package:movie_app/extension/padding_extension.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/ui/common/cache_image.dart';
import 'package:movie_app/utils/constans.dart';

class MoviesGrid extends StatelessWidget {
  const MoviesGrid({
    Key? key,
    required this.movies,
    required this.onItemTap,
  }) : super(key: key);

  final List<Movie> movies;
  final Function(Movie) onItemTap;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      cacheExtent: Constants.defaultCacheExtent,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: Constants.defaultImageRatio,
        crossAxisCount: Constants.defaultGridViewAxisCount,
      ),
      itemCount: movies.length,
      itemBuilder: (context, index) {
        final movie = movies[index];
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(LayoutSize.pt16),
              child: CacheImage(
                imgUrl: "${Secret.imageUrl}${movie.posterPath}",
                child: Container(),
              ),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadiusUtils.circular16(),
                  onTap: () {
                    onItemTap(movie);
                  },
                ),
              ),
            ),
          ],
        ).paddingAll(value: LayoutSize.pt16);
      },
    );
  }
}
