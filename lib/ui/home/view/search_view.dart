import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/config/border_radius.dart';
import 'package:movie_app/utils/app_color.dart';

class SearchView extends HookConsumerWidget {
  const SearchView({
    Key? key,
    this.readOnly = false,
    this.autoFocus = false,
    this.onTap,
    this.onChanged,
    this.onFieldSubmitted,
  }) : super(key: key);

  final bool autoFocus;
  final bool readOnly;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchTimer = useState<Timer?>(null);
    return Container(
      decoration: BoxDecoration(
        color: AppColor.searchViewBg,
        borderRadius: BorderRadiusUtils.circular24(),
      ),
      child: Row(
        children: [
          // const Icon(Icons.search).paddingEdge(left: 16, right: 8),
          Expanded(
            child: TextFormField(
              readOnly: readOnly,
              autofocus: autoFocus,
              onTap: onTap,
              keyboardType: TextInputType.text,
              onChanged: (value) {
                if (searchTimer.value?.isActive == true) {
                  searchTimer.value?.cancel();
                }
                // if user stop typing in 3 seconds then call back and call API
                searchTimer.value = Timer(
                  const Duration(seconds: 3),
                  () {
                    onChanged?.call(value);
                  },
                );
              },
              onFieldSubmitted: (value) {
                if (searchTimer.value?.isActive == true) {
                  searchTimer.value?.cancel();
                }
                onFieldSubmitted?.call(value);
              },
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                prefixIconColor: AppColor.onSurface,
                prefixIcon: const Icon(Icons.search),
                border: InputBorder.none,
                hintText: "Search movie",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
