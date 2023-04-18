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
    try {
      MovieResult trending = MovieResult();
      MovieResult popular = MovieResult();
      MovieResult topRated = MovieResult();
      MovieResult upComing = MovieResult();
      trending =
          (await _movieRepo.getMovie(movieType: MovieType.nowPlay)).dataOrThrow;

      popular =
          (await _movieRepo.getMovie(movieType: MovieType.popular)).dataOrThrow;
      topRated = (await _movieRepo.getMovie(movieType: MovieType.topRated))
          .dataOrThrow;
      upComing = (await _movieRepo.getMovie(movieType: MovieType.upcoming))
          .dataOrThrow;
      state = AsyncValue.data(HomeModel(trending, popular, topRated, upComing));
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
