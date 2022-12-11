import 'package:c22_101/article/model/article_model.dart';
import 'package:c22_101/article/pages/detail_page.dart';
import 'package:flutter/material.dart';

class ArticleList extends StatelessWidget {
  final Article article;
  const ArticleList({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPageArticle(article: article)));
      },
      child: Container(
        height: 100,
        padding: const EdgeInsets.symmetric(vertical: 10),
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(15)
        ),
        child: ListTile(
          leading: Image.network(article.urlToImage,width: 100,height: 100,fit: BoxFit.cover,),
          title: Text(article.title, overflow: TextOverflow.ellipsis,),
          subtitle: Text(article.description,maxLines: 3,),
        ),
      ),
    );
  }
}
