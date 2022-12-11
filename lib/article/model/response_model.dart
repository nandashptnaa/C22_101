
import 'article_model.dart';
class ResponseModel {
  ResponseModel({
    required this.status,
    required this.message,
    required this.totalResults,
    required this.articles,
  });

  String status;
  String message;
  int totalResults;
  List<Article> articles;

  factory ResponseModel.fromJson(Map<String, dynamic> json) => ResponseModel(
    status: json["status"],
    message: json["message"]??"Success",
    totalResults: json["totalResults"]??0,
    articles: List<Article>.from(json["articles"] == null? List<Article>.empty():json["articles"].map((x) => Article.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "totalResults": totalResults,
    "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
  };
}


