import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/config/app_router.dart';
import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/extension/text_style_extension.dart';
import 'package:movie_app/hooks/use_router.dart';
import 'package:movie_app/notifier/movie_list_notifier.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/theme/my_text_style.dart';
import 'package:movie_app/ui/common/background_view.dart';
import 'package:movie_app/ui/common/loading_indicator.dart';
import 'package:movie_app/ui/common/movies_grid.dart';
import 'package:movie_app/ui/common/pop_button.dart';
import 'package:movie_app/ui/movie_list/view/movie_pagination.dart';
import 'package:movie_app/utils/app_color.dart';
import 'package:movie_app/utils/enum.dart';

@RoutePage()
class MovieListScreen extends HookConsumerWidget {
  const MovieListScreen({
    Key? key,
    required this.title,
    required this.movies,
    required this.totalPages,
    required this.movieType,
  }) : super(key: key);

  final String title;
  final List<Movie> movies;
  final int totalPages;
  final MovieType movieType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();

    final movieListState = ref.watch(movieListNotifierProvider);
    final movieListNotifier = ref.read(movieListNotifierProvider.notifier);

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        movieListNotifier.setInitialMovie(movies);
      });
      return null;
    }, []);

    return Scaffold(
      body: SafeArea(
        child: BackgroundView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildCustomAppBar(router: router),
              const SizedBox(height: LayoutSize.pt16),
              Flexible(
                child: movieListState.when(
                  data: (data) {
                    return MoviesGrid(
                      movies: data,
                      onItemTap: (movie) {
                        router.push(
                          MovieDetailRoute(
                            heroTag: "${movieType.name}${movie.id}",
                            movie: movie,
                          ),
                        );
                      },
                    );
                  },
                  error: (error, stackTrace) => Container(),
                  loading: () => const PrimaryLoadingIndicator(),
                ),
              ),
              ClipRRect(
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(LayoutSize.pt16)),
                child: Container(
                  height: AppBar().preferredSize.height,
                  decoration: BoxDecoration(
                    color: AppColor.transparent,
                    borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(LayoutSize.pt16)),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 50,
                      sigmaY: 50,
                    ),
                    child: MoviePagination(
                      totalPages: totalPages,
                      selectedPage: movieListNotifier.currentIndex,
                      onPageChanged: (page) {
                        movieListNotifier.selectedIndex(page);
                        movieListNotifier.getMovieWithPage(movieType);
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCustomAppBar({required StackRouter router}) {
    return SizedBox(
      height: AppBar().preferredSize.height,
      child: ClipRRect(
        borderRadius: const BorderRadius.vertical(
            bottom: Radius.circular(LayoutSize.pt16)),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 80,
            sigmaY: 80,
          ),
          child: Stack(
            children: [
              PopButton(
                backgroundColor: AppColor.transparent,
                onBackPressed: () {
                  router.pop();
                },
              ),
              Center(
                child: Text(
                  title,
                  style: MyTextStyle.title.bold(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
