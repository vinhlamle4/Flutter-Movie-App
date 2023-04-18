import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/config/app_router.dart';
import 'package:movie_app/extension/padding_extension.dart';
import 'package:movie_app/extension/text_style_extension.dart';
import 'package:movie_app/hooks/use_router.dart';
import 'package:movie_app/notifier/search_notifier.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/theme/my_text_style.dart';
import 'package:movie_app/ui/common/background_view.dart';
import 'package:movie_app/ui/common/container_with_loading.dart';
import 'package:movie_app/ui/common/movies_grid.dart';
import 'package:movie_app/ui/common/pop_button.dart';
import 'package:movie_app/ui/home/view/search_view.dart';
import 'package:movie_app/utils/app_color.dart';

@RoutePage()
class SearchScreen extends HookConsumerWidget {
  const SearchScreen({
    Key? key,
    required this.heroTag,
  }) : super(key: key);

  final String heroTag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();

    final searchState = ref.watch(searchNotifierProvider);
    final searchNotifier = ref.watch(searchNotifierProvider.notifier);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: BackgroundView(
        child: Scaffold(
          backgroundColor: AppColor.transparent,
          body: SafeArea(
            child: ContainerWithLoading(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      PopButton(
                        paddingIcon: LayoutSize.pt8,
                        backgroundColor: AppColor.transparent,
                        onBackPressed: () {
                          FocusScope.of(context).unfocus();
                          router.pop();
                        },
                      ),
                      const SizedBox(width: LayoutSize.pt16),
                      Expanded(
                        child: Hero(
                          tag: heroTag,
                          child: SearchView(
                            autoFocus: true,
                            onChanged: (value) {
                              if (value.isNotEmpty) {
                                searchNotifier.getSearchMovie(value);
                              }
                            },
                            onFieldSubmitted: (value) {
                              if (value.isNotEmpty) {
                                searchNotifier.getSearchMovie(value);
                              }
                            },
                          ).paddingV(value: LayoutSize.pt16),
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: searchState.when(
                      data: (movieResult) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              "Search Result (${movieResult.totalResults})",
                              style: MyTextStyle.title.bold(),
                            ).paddingEdge(bottom: LayoutSize.pt16),
                            Expanded(
                              child: MoviesGrid(
                                movies: movieResult.results,
                                onItemTap: (movie) {
                                  router.push(
                                    MovieDetailRoute(
                                      heroTag: "${movie.id}",
                                      movie: movie,
                                    ),
                                  );
                                },
                              ),

                            ),
                          ],
                        );
                      },
                      error: (error, stackTrace) => Container(),
                      loading: () => Container(),
                    ),
                  )
                ],
              ).paddingH(value: LayoutSize.pt16),
            ),
          ),
        ),
      ),
    );
  }
}
