// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffffffff),
        ),
        child: Column(children: [
         
          Container(
            // autogroupwf5cWMY (5D1D3poz4W5HoZJX9FwF5c)
            width: double.infinity,
            height: 730,
            child: Stack(children: [
              Positioned(
                // mapsamarinda1srJ (33:802)
                left: 0,
                top: 0,
                child: Align(
                  child: SizedBox(
                    width: 360,
                    height: 320,
                    child: Container(
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("poto/logo.png"),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
              ),
              Positioned(
                // locationsMmU (43:1030)
                left: 35,
                top: 300,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 69, 0, 69),
                  width: 323,
                  height: 403,
                  decoration: BoxDecoration(
                    color: const Color(0xcc1c1a67),
                    borderRadius: BorderRadius.circular(20),
                  ),
                child: Column(children: [
                  Container(
                    
                    margin: const EdgeInsets.only(top: 30),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 0, 170, 255)),
                      onPressed: ()async {
                            await openUrl('https://www.google.co.id/maps');
                          }, child: const Text("Bagikan lokasi",style:TextStyle(fontSize: 20),maxLines: 2,))),
                  Container(margin: const EdgeInsets.only(top: 25),
                    child: const Text("Hanya kami  ",style:TextStyle(fontSize: 15,color: Colors.white),maxLines: 5,)),
                  const Text("yang melihat lokasimu dan",style:TextStyle(fontSize: 15,color: Colors.white)),
                  const Text("tidak akan dibagikan kepada",style:TextStyle(fontSize: 15,color: Colors.white)),
                  const Text("siapapun untuk menjaga privasi",style:TextStyle(fontSize: 15,color: Colors.white))
                ],)

                ),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 131, 130, 130),
                  foregroundColor: const Color.fromARGB(255, 16, 12, 12),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              )
            ]),
          )
        ]),
      ),
    );
  }
Future<void> openUrl(String Urll,
    {bool forceWebView = false, bool enableJavaScript = false}) async {
  await launch(Urll);
}
}
