import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/data/repository/movie_repository_impl.dart';
import 'package:movie_app/notifier/loading_notifier.dart';
import 'package:movie_app/utils/enum.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/movie_list_notifier.g.dart';

@riverpod
class MovieListNotifier extends _$MovieListNotifier {
  late final _movieRepo = ref.read(movieRepositoryProvider);
  late final loadingNotifier = ref.read(loadingProvider);

  AsyncValue<List<Movie>> movies = const AsyncValue.loading();

  int currentIndex = 2;

  @override
  AsyncValue<List<Movie>> build() {
    return const AsyncValue.loading();
  }

  selectedIndex(int newIndex) {
    currentIndex = newIndex;
  }

  int getCurrentIndex() {
    return currentIndex;
  }

  setInitialMovie(List<Movie> initialMovies) {
    state = AsyncValue.data(initialMovies);
  }

  Future getMovieWithPage(MovieType movieType) async {
    state = const AsyncValue.loading();
    (await _movieRepo.getMovie(
      movieType: movieType,
      page: currentIndex.toString(),
    ))
        .when(
      success: (response) {
        state = AsyncValue.data(response.results);
      },
      failure: (error) {
        state = AsyncValue.error(error, StackTrace.current);
      },
    );
  }
}
