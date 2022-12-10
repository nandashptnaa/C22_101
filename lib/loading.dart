// ignore_for_file: camel_case_types

import 'package:coba/splash.dart';
import 'package:flutter/cupertino.dart';


class Load_page extends StatefulWidget {
  const Load_page({super.key});

  @override
  State<Load_page> createState() => _Load_pageState();
}

class _Load_pageState extends State<Load_page> {
  @override
  Widget build(BuildContext context) {
    return Container(
  // splashscreenK3g (7:321)
  padding:  const EdgeInsets.fromLTRB(25, 80, 25, 141),
  width:  double.infinity,
  decoration:  const BoxDecoration (
    color:  Color(0xff7ab7ff),
  ),
  child:  
Column(
  crossAxisAlignment:  CrossAxisAlignment.center,
  children:  [
Container(
  // mujercontelfonovectorpremium1d (7:445)
  margin:  const EdgeInsets.fromLTRB(0, 0, 0, 30),
  width:  310,
  height:  310,
  child: Container(
    decoration: const BoxDecoration(image: DecorationImage(image: AssetImage("poto/sps1.png"),fit:BoxFit.cover)),
  )

),
Container(
  // buttonhomempVEz (33:1536)
  margin:  const EdgeInsets.fromLTRB(55, 0, 54.37, 67),
  width:  double.infinity,
  height:  52,
  decoration:  BoxDecoration (
    color:  const Color(0x7f000000),
    borderRadius:  BorderRadius.circular(20),
  ),
  child:  
const Center(
  child:  
Text(
  'Adukan Saja!',
  style:  TextStyle( fontSize:  20,
    fontWeight:  FontWeight.bold,
    color:  Color(0xffffffff),)

),
),
),
Container(
  // dualring1s200px1Gux (7:730)
  margin:  const EdgeInsets.fromLTRB(0.09, 0, 0, 0),
  width:  90.09,
  height:  100,
  child:  
const SplashScreen()
),

  ],
),
    );
  }
}