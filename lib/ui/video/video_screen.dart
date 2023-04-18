import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/data/models/movie/video.dart';
import 'package:movie_app/hooks/use_router.dart';
import 'package:movie_app/hooks/use_youtube_player_controller.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/utils/app_color.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

@RoutePage()
class VideoScreen extends HookConsumerWidget {
  const VideoScreen({
    Key? key,
    required this.video,
  }) : super(key: key);

  final Video video;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = useRouter();
    final isVideoInitialized = useState(false);
    final controller = useYoutubeVideoController(
      videoId: video.key,
      onInitialCompleted: () {
        isVideoInitialized.value = true;
      },
    );
    useMemoized(() {
      if (!controller.value.isFullScreen) {
        controller.toggleFullScreenMode();
      }
    });

    return WillPopScope(
      onWillPop: () async {
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          body: _videoPlayer(controller, router),
        ),
      ),
    );
  }

  YoutubePlayer _videoPlayer(
      YoutubePlayerController controller, StackRouter router) {
    return YoutubePlayer(
      controller: controller,
      aspectRatio: 16 / 9,
      topActions: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            controller.toggleFullScreenMode();
            router.pop();
          },
        ),
      ],
      bottomActions: [
        const SizedBox(width: LayoutSize.pt14),
        CurrentPosition(),
        const SizedBox(width: LayoutSize.pt8),
        ProgressBar(
          isExpanded: true,
          colors: ProgressBarColors(
            bufferedColor: Colors.white.withOpacity(0.5),
            playedColor: AppColor.primary,
            backgroundColor: AppColor.secondary,
          ),
        ),
        RemainingDuration(),
        const PlaybackSpeedButton(),
      ],
    );
  }
}
