import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/data/repository/movie_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/detail_notifier.g.dart';

@riverpod
class DetailNotifier extends _$DetailNotifier {
  late final MovieRepository _movieRepo = ref.read(movieRepositoryProvider);

  @override
  AsyncValue<Movie> build() {
    return const AsyncValue.loading();
  }

  Future getMovieDetail(String movieId) async {
    (await _movieRepo.getMovieDetail(movieId: movieId, append: "videos")).when(
      success: (data) {
        state = AsyncValue.data(data);
      },
      failure: (error) {
        state = AsyncValue.error(error, StackTrace.current);
      },
    );
  }
}
