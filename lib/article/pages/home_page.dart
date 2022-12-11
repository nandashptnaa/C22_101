import 'package:c22_101/article/model/response_model.dart';
import 'package:c22_101/article/services/api_services.dart';
import 'package:c22_101/article/widgets/article_list.dart';
import 'package:c22_101/pages/main_page.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomePageArticle extends StatelessWidget {
  const HomePageArticle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [          
          IconButton(
            onPressed: (){
              nextScreen(context, const MainPage());
            }, 
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
          )),
          Image.asset(
            "assets/bg.png",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                padding: const EdgeInsets.fromLTRB(20, 16, 12, 16),
                decoration: const BoxDecoration(
                    color: Color(0xff6251DA),
                    borderRadius:
                        BorderRadius.horizontal(right: Radius.circular(20))),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "MENTAL",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "HEALTH NEWS",
                            style: TextStyle(
                                fontSize: 32,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      "assets/header.png",
                      height: 70,
                      width: 100,
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: const Color(0xff6251DA),
                    borderRadius: BorderRadius.circular(20)),
                child: const Text(
                  "Berikut adalah daftar berita mengenai kekerasan",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.only(left: 24),
                  padding: const EdgeInsets.fromLTRB(20, 0, 12, 0),
                  decoration: const BoxDecoration(
                      color: Color(0xff1C1A67),
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(20))),
                  child: FutureBuilder<ResponseModel>(
                      future: ApiServices().getArticleList(),
                      builder: (context, snapshot) {
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        } else {
                          if (snapshot.hasData) {
                            if(snapshot.data!.articles.isEmpty){
                              return Center(child: Text(snapshot.data!.message, style: const TextStyle(
                                color: Colors.white
                              ),),);
                            }

                            return ListView.builder(
                                itemCount: snapshot.data!.articles.length,
                                itemBuilder: (context,index){
                              return ArticleList(article: snapshot.data!.articles[index]);
                            });
                          }
                        }

                        return Container();
                      }),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
