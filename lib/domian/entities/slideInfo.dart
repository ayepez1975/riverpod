class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
  SlideInfo copyWith({String? title, String? caption, String? imageUrl}) =>
      SlideInfo(
        title: title ?? this.title,
        caption: caption ?? this.caption,
        imageUrl: imageUrl ?? this.imageUrl,
      );
}
