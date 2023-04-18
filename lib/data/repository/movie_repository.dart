import 'package:movie_app/data/models/common/result.dart';
import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/data/models/movie/movie_result.dart';
import 'package:movie_app/utils/enum.dart';

abstract class MovieRepository {
  Future<Result<MovieResult>> getMovie({
    required MovieType movieType,
    String page = "1",
  });

  Future<Result<Movie>> getMovieDetail({
    required String movieId,
    String append = "",
  });

  Future<Result<MovieResult>> getSearchMovie({
    required String query,
  });
}
