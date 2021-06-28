



import 'package:flutter30days/pages/youtube/model/thumbnail_data.dart';

class Thumbnails{
  final ThumbnailData medium;
  final ThumbnailData high;

  Thumbnails({required this.medium, required this.high});

  factory Thumbnails.fromJson(Map<String,dynamic> json) {
    return Thumbnails(
        medium: ThumbnailData.fromJson(json['medium']),
        high: ThumbnailData.fromJson(json['high'])
    );

  }

}