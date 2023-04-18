import 'package:flutter/material.dart';
import 'package:movie_app/extension/padding_extension.dart';
import 'package:movie_app/theme/layout_size.dart';

class ChipRow extends StatelessWidget {
  const ChipRow({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List items;

  @override
  Widget build(BuildContext context) {
    final widget = items
        .asMap()
        .entries
        .map(
          (e) => Chip(
            label: Text(e.value),
          ).paddingH(value: LayoutSize.pt4),
        )
        .toList();
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: widget,
      ),
    );
  }
}
