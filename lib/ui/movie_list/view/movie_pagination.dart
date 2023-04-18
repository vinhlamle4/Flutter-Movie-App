import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/extension/padding_extension.dart';
import 'package:movie_app/theme/layout_size.dart';
import 'package:movie_app/utils/app_color.dart';

class MoviePagination extends HookConsumerWidget {
  const MoviePagination({
    Key? key,
    required this.totalPages,
    required this.selectedPage,
    this.pagesVisible = 5,
    required this.onPageChanged,
  }) : super(key: key);

  final int totalPages;
  final int selectedPage;
  final int pagesVisible;
  final Function onPageChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final startPage = useState(0);
    final endPage = useState(0);

    _calculateVisiblePages(startPage, endPage);
    return Material(
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(LayoutSize.pt8),
            onTap:
                selectedPage > 1 ? () => onPageChanged(selectedPage - 1) : null,
            child: const Icon(Icons.arrow_back_ios_new).paddingAll(value: LayoutSize.pt8),
          ),
          for (int i = startPage.value; i <= endPage.value; i++)
            AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              child: InkWell(
                borderRadius: BorderRadius.circular(LayoutSize.pt8),
                onTap: () => onPageChanged(i),
                child: Container(
                  width: MediaQuery.of(context).size.width / 10,
                  height: MediaQuery.of(context).size.height * 0.05,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(LayoutSize.pt8),
                    color:
                        i == selectedPage ? AppColor.primary : Colors.transparent,
                  ),
                  child: Text("$i"),
                ),
              ),
            ),
          InkWell(
            borderRadius: BorderRadius.circular(LayoutSize.pt8),
            onTap: selectedPage < totalPages
                ? () => onPageChanged(selectedPage + 1)
                : null,
            child: const Icon(Icons.arrow_forward_ios).paddingAll(value: LayoutSize.pt8),
          )
        ],
      ),
    );
  }

  Widget roundedInkWell({
    required VoidCallback onTap,
    required Widget child,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(LayoutSize.pt8),
      onTap: () => onTap(),
      child: child,
    );
  }

  void _calculateVisiblePages(
      ValueNotifier<int> startPage, ValueNotifier<int> endPage) {
    if (totalPages <= pagesVisible) {
      startPage.value = 1;
      endPage.value = totalPages;
    } else {
      final middle = (pagesVisible - 1) ~/ 2;
      if (selectedPage <= middle + 1) {
        startPage.value = 1;
        endPage.value = pagesVisible;
      }
      // last page
      else if (selectedPage >= totalPages - middle) {
        startPage.value = totalPages - (pagesVisible - 1);
        endPage.value = totalPages;
      } else {
        startPage.value = selectedPage - middle;
        endPage.value = selectedPage + middle;
      }
    }
  }
}
