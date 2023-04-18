import 'package:movie_app/data/models/movie/movie_result.dart';
import 'package:movie_app/data/repository/movie_repository.dart';
import 'package:movie_app/data/repository/movie_repository_impl.dart';
import 'package:movie_app/notifier/loading_notifier.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generated/search_notifier.g.dart';

@riverpod
class SearchNotifier extends _$SearchNotifier {
  late final MovieRepository _movieRepo = ref.read(movieRepositoryProvider);
  late final _loadingNotifier = ref.read(loadingProvider);

  @override
  AsyncValue<MovieResult> build() {
    return const AsyncValue.loading();
  }

  Future getSearchMovie(String query) async {
    _loadingNotifier.toLoading();
    (await _movieRepo.getSearchMovie(query: query)).when(
      success: (data) {
        state = AsyncValue.data(data);
      },
      failure: (error) {
        state = AsyncValue.error(error, StackTrace.current);
      },
    );
    _loadingNotifier.toIdle();
  }
}
