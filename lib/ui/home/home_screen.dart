import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/config/app_router.dart';
import 'package:movie_app/data/app_error.dart';
import 'package:movie_app/data/models/notifier/home_model.dart';
import 'package:movie_app/extension/padding_extension.dart';
import 'package:movie_app/extension/text_style_extension.dart';
import 'package:movie_app/hooks/use_router.dart';
import 'package:movie_app/notifier/home_notifier.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/theme/my_text_style.dart';
import 'package:movie_app/ui/common/background_view.dart';
import 'package:movie_app/ui/common/loading_indicator.dart';
import 'package:movie_app/ui/home/view/movie_list.dart';
import 'package:movie_app/ui/home/view/search_view.dart';
import 'package:movie_app/ui/home/view/trending_movie.dart';
import 'package:movie_app/utils/enum.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();
    final homeState = ref.watch(homeNotifierProvider);

    return Scaffold(
      body: SafeArea(
        child: BackgroundView(
          child: homeState.when(
            data: (response) => _buildBody(response, router, context),
            error: (error, stackTrace) {
              String message = "App Error";
              if (error is AppError) {
                message = error.message;
              }
              return Container(
                alignment: Alignment.bottomCenter,
                child: Text(
                  message,
                  textAlign: TextAlign.center,
                ).paddingAll(value: LayoutSize.pt32),
              );
            },
            loading: () => const PrimaryLoadingIndicator(),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(
    HomeModel homeModel,
    StackRouter router,
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: ListView(
        children: [
          const SizedBox(height: LayoutSize.pt32),
          SearchView(
            readOnly: true,
            onTap: () {
              router.push(SearchRoute(heroTag: "search_view"));
            },
          ).paddingH(value: LayoutSize.pt16),
          Text(
            MovieType.nowPlay.title,
            style: MyTextStyle.title.bold(),
          ).paddingVH(vertical: LayoutSize.pt24, horizontal: LayoutSize.pt16),
          TrendingMovie(
            movies: homeModel.trendingMovie.results,
            onItemTap: (movie) {
              router.push(
                MovieDetailRoute(
                  heroTag: "${MovieType.nowPlay.name}${movie.id}",
                  movie: movie,
                ),
              );
            },
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: MovieList(
              movieTitle: MovieType.popular.title,
              movies: homeModel.popularMovie.results,
              seeMoreTap: () {
                router.push(
                  MovieListRoute(
                    title: MovieType.popular.title,
                    movieType: MovieType.popular,
                    movies: homeModel.popularMovie.results,
                    totalPages: homeModel.popularMovie.totalPages,
                  ),
                );
              },
              onItemTap: (movie) {
                router.push(MovieDetailRoute(
                    heroTag: "${MovieType.popular.name}${movie.id}",
                    movie: movie));
              },
            ),
          ).paddingH(value: LayoutSize.pt16),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: MovieList(
              movieTitle: MovieType.topRated.title,
              movies: homeModel.topRatedMovie.results,
              seeMoreTap: () {
                router.push(
                  MovieListRoute(
                    title: MovieType.topRated.title,
                    movieType: MovieType.topRated,
                    movies: homeModel.topRatedMovie.results,
                    totalPages: homeModel.topRatedMovie.totalPages,
                  ),
                );
              },
              onItemTap: (movie) {
                router.push(MovieDetailRoute(
                    heroTag: "${MovieType.topRated.name}${movie.id}",
                    movie: movie));
              },
            ).paddingH(value: LayoutSize.pt16),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: MovieList(
              movieTitle: MovieType.upcoming.title,
              movies: homeModel.upComingMovie.results,
              seeMoreTap: () {
                router.push(
                  MovieListRoute(
                    title: MovieType.upcoming.title,
                    movieType: MovieType.upcoming,
                    movies: homeModel.upComingMovie.results,
                    totalPages: homeModel.upComingMovie.totalPages,
                  ),
                );
              },
              onItemTap: (movie) {
                router.push(MovieDetailRoute(
                    heroTag: "${MovieType.upcoming.name}${movie.id}",
                    movie: movie));
              },
            ).paddingH(value: LayoutSize.pt16),
          ),
          const SizedBox(height: LayoutSize.pt32),
        ],
      ),
    );
  }
}
