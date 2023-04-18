import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/config/border_radius.dart';
import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/data/secret/secret.dart';
import 'package:movie_app/extension/text_style_extension.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/utils/app_color.dart';
import 'package:movie_app/ui/common/cache_image.dart';

class TrendingMovie extends StatelessWidget {
  const TrendingMovie({
    Key? key,
    required this.movies,
    required this.onItemTap,
  }) : super(key: key);

  final List<Movie> movies;
  final Function(Movie) onItemTap;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: movies.length,
      options: CarouselOptions(
        aspectRatio: 21 / 9,
        autoPlay: true,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
      ),
      itemBuilder: (context, index, realIndex) => ClipRRect(
        borderRadius: BorderRadiusUtils.circular16(),
        child: Card(
          color: AppColor.background,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusUtils.circular16(),
          ),
          child: Stack(
            children: [
              Positioned.fill(child: _buildImage(index)),
              Positioned.fill(
                child: Container(
                  padding: const EdgeInsets.all(LayoutSize.pt8),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusUtils.circular16(),
                    gradient: LinearGradient(
                      colors: [
                        AppColor.carouselImageGradientStart,
                        AppColor.carouselImageGradientEnd,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Text(
                    movies[index].title,
                    style: const TextStyle(fontSize: LayoutSize.pt16).bold(),
                  ),
                ),
              ),
              Positioned.fill(
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    borderRadius: BorderRadiusUtils.circular16(),
                    onTap: () => onItemTap(movies[index]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  ClipRRect _buildImage(int index) {
    return ClipRRect(
      borderRadius: BorderRadiusUtils.circular16(),
      child: CacheImage(
        imgUrl: Secret.imageUrl + movies[index].backdropPath,
        child: Container(),
      ),
    );
  }
}
