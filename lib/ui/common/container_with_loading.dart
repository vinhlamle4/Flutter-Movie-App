import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/notifier/loading_notifier.dart';
import 'package:movie_app/ui/common/loading_indicator.dart';

class ContainerWithLoading extends HookConsumerWidget {
  const ContainerWithLoading({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadingNotifier = ref.watch(loadingProvider);
    return Stack(
      children: [
        child,
        loadingNotifier.isLoading
            ? Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.black.withOpacity(0.2),
                child: IgnorePointer(
                  ignoring: loadingNotifier.isLoading,
                  child: const PrimaryLoadingIndicator(),
                ),
              )
            : const SizedBox(),
      ],
    );
  }
}
