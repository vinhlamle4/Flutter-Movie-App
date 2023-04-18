import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/data/models/movie/movie_result.dart';
import 'package:movie_app/data/remote/app_dio.dart';
import 'package:movie_app/data/secret/secret.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/movie_retrofit.g.dart';

@riverpod
MovieRetrofit movieRetrofit(MovieRetrofitRef ref) => MovieRetrofit(ref);

@RestApi(baseUrl: Secret.baseUrl)
abstract class MovieRetrofit {
  factory MovieRetrofit(Ref ref) => _MovieRetrofit(ref.read(appDioProvider));

  @GET("/movie/{movie_type}")
  Future<MovieResult> getMovie({
    @Path("movie_type") required String movieType,
    @Query("api_key") required String apiKey,
    @Query("page") String page = "1",
  });

  @GET("/movie/{movie_id}")
  Future<Movie> getMovieDetail({
    @Path("movie_id") required String movieId,
    @Query("api_key") required String apiKey,
    @Query("append_to_response") required String append,
  });

  @GET("/search/movie")
  Future<MovieResult> getSearchMovies({
    @Query("query") required String query,
    @Query("api_key") required String apiKey,
  });
}
