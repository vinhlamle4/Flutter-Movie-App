import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'loading_indicator.dart';

class CacheImage extends StatelessWidget {
  const CacheImage({
    Key? key,
    required this.imgUrl,
    required this.child,
  }) : super(key: key);

  final String imgUrl;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      key: UniqueKey(),
      imageUrl: imgUrl,
      imageBuilder: (builderContext, imageProvider) {
        precacheImage(imageProvider, context);
        return Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: imageProvider,
              fit: BoxFit.cover,
            ),
          ),
          child: child,
        );
      },
      errorWidget: (context, url, error) {
        return Container();
      },
      placeholder: (placeContext, url) {
        return const Center(child: PrimaryLoadingIndicator());
      },
    );
  }
}
