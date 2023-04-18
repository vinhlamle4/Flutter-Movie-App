import 'package:movie_app/data/models/movie/movie_result.dart';

class HomeModel {
  MovieResult trendingMovie = MovieResult();
  MovieResult popularMovie = MovieResult();
  MovieResult topRatedMovie = MovieResult();
  MovieResult upComingMovie = MovieResult();

  HomeModel(
    this.trendingMovie,
    this.popularMovie,
    this.topRatedMovie,
    this.upComingMovie,
  );
}
