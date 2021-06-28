





class ThumbnailData{
  final String url;
  final  width;
  final  height;

  ThumbnailData({required this.url, required this.width, required this.height});

  factory ThumbnailData.fromJson(Map<String,dynamic> json) {
    return ThumbnailData(
        url: json['url'],
        width: json['width'],
        height: json['height']
    );
  }
}