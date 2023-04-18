enum MovieType {
  nowPlay("now_playing", "Trending"),
  popular("popular", "Popular"),
  topRated("top_rated", "Top Rated"),
  upcoming("upcoming", "Upcoming");

  final String name;
  final String title;

  const MovieType(this.name, this.title);
}

enum VideoType {
  trailer("Trailer"),
  clip("Clip");

  final String name;

  const VideoType(this.name);
}

enum VideoSiteType {
  youtube("YouTube"),
  vimeo("Vimeo");

  final String name;

  const VideoSiteType(this.name);
}
