import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class NewDotIndicator extends StatefulWidget {
  const NewDotIndicator({
    Key? key,
    required this.color,
    required this.fontSize,
    this.numberOfDots = 3,
    this.dotSpacing = 0.0,
  }) : super(key: key);

  final Color color;
  final double fontSize;
  final int numberOfDots;
  final double dotSpacing;

  @override
  State<NewDotIndicator> createState() => _NewDotIndicatorState();
}

class _NewDotIndicatorState extends State<NewDotIndicator>
    with SingleTickerProviderStateMixin {
  final double beginTweenValue = 0.0;
  final double endTweenValue = 8.0;
  late List<AnimationController> controllers = <AnimationController>[];
  final List<Animation<double>> animations = <Animation<double>>[];
  final List<Widget> _widgets = <Widget>[];

  @override
  void initState() {
    controllers = List.generate(widget.numberOfDots, (index) {
      return AnimationController(
        duration: const Duration(milliseconds: 250),
        vsync: this,
      );
    }).toList();
    for (int i = 0; i < widget.numberOfDots; i++) {
      _buildAnimations(i);
      _addListOfDots(i);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.fontSize + (widget.fontSize * 0.5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: _widgets,
      ),
    );
  }

  void _buildAnimations(int index) {
    animations.add(
      Tween(begin: beginTweenValue, end: endTweenValue)
          .animate(controllers[index])
        ..addStatusListener(
          (AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              controllers[index].reverse();
            }
            if (index == widget.numberOfDots - 1 &&
                status == AnimationStatus.dismissed) {
              controllers[0].forward();
            }
            if (animations[index].value > endTweenValue / 2 &&
                index < widget.numberOfDots - 1) {
              controllers[index + 1].forward();
            }
          },
        ),
    );
  }

  void _addListOfDots(int index) {
    _widgets.add(
      _JumpingDot(
        animation: animations[index],
        fontSize: widget.fontSize,
        color: widget.color,
      ),
    );
    _widgets.add(const SizedBox(width: 4));
  }
}

class DotIndicator extends HookWidget {
  DotIndicator({
    Key? key,
    required this.color,
    required this.fontSize,
    this.numberOfDots = 3,
    this.dotSpacing = 0.0,
  }) : super(key: key);

  final Color color;
  final double fontSize;
  final int numberOfDots;
  final double dotSpacing;

  final double beginTweenValue = 0.0;
  final double endTweenValue = 8.0;
  final List<AnimationController> controllers = <AnimationController>[];
  final List<Animation<double>> animations = <Animation<double>>[];
  final List<Widget> _widgets = <Widget>[];

  @override
  Widget build(BuildContext context) {
    final isCanGenItem = useState(true);
    if (isCanGenItem.value) {
      for (int i = 0; i < numberOfDots; i++) {
        final animationController = useAnimationController(
          keys: [numberOfDots, i],
          duration: const Duration(milliseconds: 250),
        );
        controllers.add(animationController);
        _buildAnimations(i);
        _addListOfDots(i);
      }
      isCanGenItem.value = false;
    }

    useMemoized(() {
      controllers[0].forward();
    });

    return SizedBox(
      height: fontSize + (fontSize * 0.5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: _widgets,
      ),
    );
  }

  void _buildAnimations(int index) {
    animations.add(
      Tween(begin: beginTweenValue, end: endTweenValue)
          .animate(controllers[index])
        ..addStatusListener(
          (AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              controllers[index].reverse();
            }
            if (index == numberOfDots - 1 &&
                status == AnimationStatus.dismissed) {
              controllers[0].forward();
            }
            if (animations[index].value > endTweenValue / 2 &&
                index < numberOfDots - 1) {
              controllers[index + 1].forward();
            }
          },
        ),
    );
  }

  void _addListOfDots(int index) {
    _widgets.add(
      _JumpingDot(
        animation: animations[index],
        fontSize: fontSize,
        color: color,
      ),
    );
    _widgets.add(const SizedBox(width: 4));
  }
}

class _JumpingDot extends AnimatedWidget {
  final Color? color;
  final double? fontSize;

  const _JumpingDot(
      {Key? key,
      required Animation<double> animation,
      this.color,
      this.fontSize})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = listenable as Animation<double>;
    return Wrap(
      children: [
        SizedBox(
          height: animation.value + fontSize!,
          child: Container(
            width: animation.value + fontSize!,
            height: animation.value + fontSize!,
            decoration: BoxDecoration(
              color: color!,
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
      ],
    );
  }
}
