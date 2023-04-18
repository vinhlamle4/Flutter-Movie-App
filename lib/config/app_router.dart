import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:movie_app/data/models/movie/video.dart';
import 'package:movie_app/ui/home/home_screen.dart';
import 'package:movie_app/ui/movie_detail/movie_detail_screen.dart';
import 'package:movie_app/ui/movie_list/movie_list_screen.dart';
import 'package:movie_app/ui/search/search_screen.dart';
import 'package:movie_app/ui/video/video_screen.dart';
import 'package:movie_app/utils/enum.dart';

import '../data/models/movie/movie.dart';

part 'app_router.gr.dart';

final appRouterProvider = Provider((_) => AppRouter());

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: "/"),
    AutoRoute(page: MovieListRoute.page),
    AutoRoute(page: SearchRoute.page),
    AutoRoute(page: MovieDetailRoute.page),
    AutoRoute(page: VideoRoute.page),
  ];
}
