// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomeScreen();
    },
  );
}

/// generated route for
/// [MovieDetailScreen]
class MovieDetailRoute extends PageRouteInfo<MovieDetailRouteArgs> {
  MovieDetailRoute({
    Key? key,
    required String heroTag,
    required Movie movie,
    List<PageRouteInfo>? children,
  }) : super(
          MovieDetailRoute.name,
          args: MovieDetailRouteArgs(
            key: key,
            heroTag: heroTag,
            movie: movie,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieDetailRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieDetailRouteArgs>();
      return MovieDetailScreen(
        key: args.key,
        heroTag: args.heroTag,
        movie: args.movie,
      );
    },
  );
}

class MovieDetailRouteArgs {
  const MovieDetailRouteArgs({
    this.key,
    required this.heroTag,
    required this.movie,
  });

  final Key? key;

  final String heroTag;

  final Movie movie;

  @override
  String toString() {
    return 'MovieDetailRouteArgs{key: $key, heroTag: $heroTag, movie: $movie}';
  }
}

/// generated route for
/// [MovieListScreen]
class MovieListRoute extends PageRouteInfo<MovieListRouteArgs> {
  MovieListRoute({
    Key? key,
    required String title,
    required List<Movie> movies,
    required int totalPages,
    required MovieType movieType,
    List<PageRouteInfo>? children,
  }) : super(
          MovieListRoute.name,
          args: MovieListRouteArgs(
            key: key,
            title: title,
            movies: movies,
            totalPages: totalPages,
            movieType: movieType,
          ),
          initialChildren: children,
        );

  static const String name = 'MovieListRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MovieListRouteArgs>();
      return MovieListScreen(
        key: args.key,
        title: args.title,
        movies: args.movies,
        totalPages: args.totalPages,
        movieType: args.movieType,
      );
    },
  );
}

class MovieListRouteArgs {
  const MovieListRouteArgs({
    this.key,
    required this.title,
    required this.movies,
    required this.totalPages,
    required this.movieType,
  });

  final Key? key;

  final String title;

  final List<Movie> movies;

  final int totalPages;

  final MovieType movieType;

  @override
  String toString() {
    return 'MovieListRouteArgs{key: $key, title: $title, movies: $movies, totalPages: $totalPages, movieType: $movieType}';
  }
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<SearchRouteArgs> {
  SearchRoute({
    Key? key,
    required String heroTag,
    List<PageRouteInfo>? children,
  }) : super(
          SearchRoute.name,
          args: SearchRouteArgs(
            key: key,
            heroTag: heroTag,
          ),
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SearchRouteArgs>();
      return SearchScreen(
        key: args.key,
        heroTag: args.heroTag,
      );
    },
  );
}

class SearchRouteArgs {
  const SearchRouteArgs({
    this.key,
    required this.heroTag,
  });

  final Key? key;

  final String heroTag;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, heroTag: $heroTag}';
  }
}

/// generated route for
/// [VideoScreen]
class VideoRoute extends PageRouteInfo<VideoRouteArgs> {
  VideoRoute({
    Key? key,
    required Video video,
    List<PageRouteInfo>? children,
  }) : super(
          VideoRoute.name,
          args: VideoRouteArgs(
            key: key,
            video: video,
          ),
          initialChildren: children,
        );

  static const String name = 'VideoRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<VideoRouteArgs>();
      return VideoScreen(
        key: args.key,
        video: args.video,
      );
    },
  );
}

class VideoRouteArgs {
  const VideoRouteArgs({
    this.key,
    required this.video,
  });

  final Key? key;

  final Video video;

  @override
  String toString() {
    return 'VideoRouteArgs{key: $key, video: $video}';
  }
}
