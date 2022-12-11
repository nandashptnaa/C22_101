import 'package:c22_101/article/model/source_model.dart';

class Article {
  Article({
    required this.source,
    this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  final Source source;
  final String? author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final DateTime publishedAt;
  final String content;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    source: json["source"] ==null? Source(id: "0", name: "-"):Source.fromJson(json["source"]),
    author: json["author"] ?? "-",
    title: json["title"] ??"-",
    description: json["description"] ?? "-",
    url: json["url"] ?? "https://google.co.id",
    urlToImage: json["urlToImage"]??"https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
    publishedAt: json["publishedAt"] == null? DateTime.now():DateTime.parse(json["publishedAt"]),
    content: json["content"] ?? "-",
  );

  Map<String, dynamic> toJson() => {
    "source": source.toJson(),
    "author": author,
    "title": title,
    "description": description,
    "url": url,
    "urlToImage": urlToImage,
    "publishedAt": publishedAt.toIso8601String(),
    "content": content,
  };
}