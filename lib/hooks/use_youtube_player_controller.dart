import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

YoutubePlayerController useYoutubeVideoController({
  required String videoId,
  required VoidCallback onInitialCompleted,
  bool autoPlay = false,
  bool looping = false,
}) {
  return use(
    _VideoPlayerControllerHook(
      videoId: videoId,
      autoPlay: autoPlay,
      looping: looping,
      onInitialCompleted: onInitialCompleted,
      keys: [videoId, autoPlay, looping],
    ),
  );
}

class _VideoPlayerControllerHook extends Hook<YoutubePlayerController> {
  const _VideoPlayerControllerHook({
    required this.videoId,
    required this.autoPlay,
    required this.looping,
    required this.onInitialCompleted,
    List<Object?>? keys,
  }) : super(keys: keys);

  final String videoId;
  final bool autoPlay;
  final bool looping;
  final VoidCallback onInitialCompleted;

  @override
  _VideoPlayerControllerHookState createState() =>
      _VideoPlayerControllerHookState();
}

class _VideoPlayerControllerHookState
    extends HookState<YoutubePlayerController, _VideoPlayerControllerHook> {
  late final YoutubePlayerController _controller;

  @override
  void initHook() {
    _controller = YoutubePlayerController(
      initialVideoId: hook.videoId,
      flags: const YoutubePlayerFlags(autoPlay: true),
    );

    if (hook.autoPlay) {
      _controller.play();
    }
  }

  @override
  YoutubePlayerController build(BuildContext context) => _controller;

  @override
  void dispose() {
    _controller.dispose();
  }
}
