import 'package:movie_app/data/models/movie/movie_result.dart';
import 'package:movie_app/data/models/notifier/home_model.dart';
import 'package:movie_app/data/repository/movie_repository_impl.dart';
import 'package:movie_app/utils/enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/home_notifier.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  late final _movieRepo = ref.read(movieRepositoryProvider);

  @override
  AsyncValue<HomeModel> build() {
    getMovie();
    return const AsyncValue.loading();
  }

  Future getMovie() async {
    state = const AsyncValue.loading();
    try {
      List<MovieResult> movies = [
        MovieResult(), // trending
        MovieResult(), // popular
        MovieResult(), // topRated
        MovieResult(), // upcoming
      ];

      final responses = await Future.wait([
        _movieRepo.getMovie(movieType: MovieType.nowPlay),
        _movieRepo.getMovie(movieType: MovieType.popular),
        _movieRepo.getMovie(movieType: MovieType.topRated),
        _movieRepo.getMovie(movieType: MovieType.upcoming),
      ]);

      for (int i = 0; i < responses.length; i++) {
        movies[i] = responses[i].dataOrThrow;
      }

      state = AsyncValue.data(
          HomeModel(movies[0], movies[1], movies[2], movies[3]));
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
