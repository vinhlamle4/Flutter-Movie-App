import 'package:flutter/material.dart';
import 'package:movie_app/extension/padding_extension.dart';
import 'package:movie_app/theme/layout_size.dart';

class PopButton extends StatelessWidget {
  const PopButton({
    Key? key,
    required this.backgroundColor,
    required this.onBackPressed,
    this.paddingIcon,
  }) : super(key: key);

  final Color backgroundColor;
  final VoidCallback onBackPressed;
  final double? paddingIcon;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(LayoutSize.pt16),
      child: InkWell(
        borderRadius: BorderRadius.circular(LayoutSize.pt16),
        onTap: onBackPressed,
        child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(LayoutSize.pt16),
          ),
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ).paddingAll(value: paddingIcon ?? LayoutSize.pt16),
      ),
    );
  }
}
