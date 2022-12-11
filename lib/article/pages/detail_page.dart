import 'package:c22_101/article/model/article_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPageArticle extends StatelessWidget {
  final Article article;
  const DetailPageArticle({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff09A8C8),
        title: const Text("Detail"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(article.urlToImage),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Text(article.title, style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 20),),
                  const Divider(),
                  Text(article.description, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                  Text(article.content, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                  TextButton(onPressed: ()async{
                    print("presss");
                    if(!await launchUrl(Uri.parse(article.url))){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Could not launch ${article.url}")));
                    }else{
                      print("elseee");
                    }
                  }, child: const Text("Read More ...")),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const Text("Source : ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                      Text(article.source.name, style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Author : ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                      Text(article.author.toString(), style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                    ],
                  ),
                  Row(
                    children: [
                      const Text("Publish : ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),),
                      Text(article.publishedAt.toString(), style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
