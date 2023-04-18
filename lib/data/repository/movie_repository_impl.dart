import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/data/models/common/result.dart';
import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/data/models/movie/movie_result.dart';
import 'package:movie_app/data/remote/movie_retrofit.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/data/secret/secret.dart';
import 'package:movie_app/utils/enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/movie_repository_impl.g.dart';

@riverpod
MovieRepository movieRepository(MovieRepositoryRef ref) =>
    MovieRepositoryImpl(ref);

class MovieRepositoryImpl implements MovieRepository {
  MovieRepositoryImpl(this._ref);

  late final Ref _ref;

  late final _movieRetrofit = _ref.read(movieRetrofitProvider);

  @override
  Future<Result<MovieResult>> getMovie(
      {required MovieType movieType, String page = "1"}) {
    return Result.guardFuture(
      () async => await _movieRetrofit.getMovie(
        movieType: movieType.name,
        apiKey: Secret.apiKey,
        page: page,
      ),
    );
  }

  @override
  Future<Result<Movie>> getMovieDetail({
    required String movieId,
    String append = "",
  }) {
    return Result.guardFuture(
      () async => await _movieRetrofit.getMovieDetail(
          movieId: movieId, apiKey: Secret.apiKey, append: append),
    );
  }

  @override
  Future<Result<MovieResult>> getSearchMovie({required String query}) {
    return Result.guardFuture(
      () async => await _movieRetrofit.getSearchMovies(
        query: query,
        apiKey: Secret.apiKey,
      ),
    );
  }
}
