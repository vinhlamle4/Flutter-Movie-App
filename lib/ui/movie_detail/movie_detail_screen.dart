import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/config/app_router.dart';
import 'package:movie_app/data/models/movie/movie.dart';
import 'package:movie_app/data/secret/secret.dart';
import 'package:movie_app/extension/padding_extension.dart';
import 'package:movie_app/hooks/use_panel_controller.dart';
import 'package:movie_app/hooks/use_router.dart';
import 'package:movie_app/notifier/detail_notifier.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/ui/common/background_view.dart';
import 'package:movie_app/ui/common/loading_indicator.dart';
import 'package:movie_app/ui/common/pop_button.dart';
import 'package:movie_app/ui/movie_detail/view/movie_panel.dart';
import 'package:movie_app/utils/app_color.dart';

@RoutePage()
class MovieDetailScreen extends HookConsumerWidget {
  const MovieDetailScreen({
    Key? key,
    required this.heroTag,
    required this.movie,
  }) : super(key: key);

  final String heroTag;
  final Movie movie;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();
    final panelController = usePanelController();
    final detailNotifier = ref.read(detailNotifierProvider.notifier);
    final detailState = ref.watch(detailNotifierProvider);

    useMemoized(() => detailNotifier.getMovieDetail(movie.id.toString()));

    return Scaffold(
      body: SafeArea(
        child: BackgroundView(
          child: detailState.when(
            data: (data) => Stack(
              children: [
                Hero(
                  tag: heroTag,
                  child: CachedNetworkImage(
                    imageUrl: Secret.imageUrl + data.posterPath,
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                    alignment: Alignment.center,
                    errorWidget: (context, url, error) {
                      return Container();
                    },
                  ),
                ),
                PopButton(
                  backgroundColor: AppColor.blackOpacity4,
                  onBackPressed: () {
                    router.pop();
                  },
                ).paddingEdge(left: LayoutSize.pt8, top: LayoutSize.pt16),
                MoviePanel(
                  movie: data,
                  panelController: panelController,
                  onWatchBtnTap: (video) {
                    router.push(VideoRoute(video: video));
                  },
                )
              ],
            ),
            error: (error, stackTrace) => Container(),
            loading: () => const PrimaryLoadingIndicator(),
          ),
        ),
      ),
    );
  }
}
