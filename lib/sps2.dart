// ignore_for_file: unused_import, implementation_imports, unnecessary_import, sized_box_for_whitespace

import 'package:coba/sps3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class Sps2 extends StatelessWidget {
  const Sps2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // sps2Ypz (1:8)
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 46),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff7ab7ff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // frame3mxe (4:188)
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 145),
            width: 897,
            height: 21,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
             
                Container(
                  // frame1o46 (4:216)
                  width: 340,
                  height: 21,
                ),
              ],
            ),
          ),
          Container(
            // autogroupjwneVSi (5Czpt8QwjBa1EoxM2KJWne)
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 29),
            width: double.infinity,
            height: 505,
            child: Stack(
              children: [
                const Positioned(
                  // absic2PY6 (4:308)
                  left: 0,
                  top: 139,
                  child: Align(
                    child: SizedBox(
                      width: 473,
                      height: 364,
                    ),
                  ),
                ),
                Positioned(
                  // freevectorstopbullyingconcept1 (6:317)
                  left: 22,
                  top: 0,
                  child: Align(
                    child: SizedBox(
                      width: 317,
                      height: 224,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("poto/sps3.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // buttonttA (7:325)
                  left: 216,
                  top: 469,
                  child: Container(
                    width: 116,
                    height: 36,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Stack(
                      children: [
                        
                        Container(
                          margin: const EdgeInsets.only(left: 30),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xea46724d),
                              ),
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Sps3(),));
                              },
                              child: const Text(
                                "Lanjut",
                                style: TextStyle(fontSize: 15),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // buttonhomemptfC (33:1542)
                  left: 18,
                  top: 293,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(8.87, 19, 8.87, 18),
                    width: 314,
                    height: 107,
                    decoration: BoxDecoration(
                      color: const Color(0x7f000000),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child:
                      Text(
                            'Dapat terjadi dimana, kapan dan siapa saja',
                            maxLines: 3,
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                   
                              color: Color(0xffffffff),
                            ),
                        
                      
                      ))
                  ),
                ),
              ],
            ),
          ),
          Container(
            // group317Y (4:186)
            margin: const EdgeInsets.fromLTRB(74, 0, 74, 0),
            padding: const EdgeInsets.fromLTRB(31, 0, 31, 0),
            width: double.infinity,
            height: 34,
            child: Container(
              // frame2W4J (4:178)
              width: double.infinity,
              height: 12,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle27pan (4:179)
                    width: 35,
                    height: 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffffffff),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    // rectangle26WiW (4:180)
                    width: 60,
                    height: 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xd63e3bc7),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    // rectangle28cFk (4:181)
                    width: 35,
                    height: 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffffffff),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
