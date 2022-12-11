import 'dart:convert';
import 'package:c22_101/article/model/response_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<ResponseModel> getArticleList() async {
    try {
      final response = await http.get(Uri.parse(
          "https://newsapi.org/v2/everything?q=kekerasan&apiKey=73be0fe091fa41f281a9784eaf8baf53"));

      if (response.statusCode == 200) {
        var result = ResponseModel.fromJson(json.decode(response.body));
        return result;
      } else {
        return ResponseModel.fromJson(json.decode(response.body));
      }
    }catch(e){
      return ResponseModel(status: "fail", message: e.toString(), totalResults: 0, articles: []);
    }
  }
}
