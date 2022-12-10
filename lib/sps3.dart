// ignore_for_file: unnecessary_import, implementation_imports, sized_box_for_whitespace

import 'package:coba/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';


class Sps3 extends StatelessWidget {
  const Sps3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // sps3ruQ (1:9)
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 43),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff7ab7ff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // frame4634 (4:244)
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 108),
          
            height: 21,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
               
                Container(
                  // statusiconsfEa (4:246)
                  margin: const EdgeInsets.fromLTRB(0, 4.5, 217, 4.5),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // networksignallightAx2 (4:247)
                        margin: const EdgeInsets.fromLTRB(0, 0, 6.5, 0),
                        width: 16.5,
                        height: 10,
                      ),
                      Container(
                        // wifisignallightdKp (4:248)
                        margin: const EdgeInsets.fromLTRB(0, 0, 4.75, 0),
                        width: 14.25,
                        height: 10,
                      ),
                      Container(
                        // batterylightV78 (4:249)
                        width: 25,
                        height: 12,
                      ),
                    ],
                  ),
                ),
            
              ],
            ),
          ),
          Container(
            // autogroupzxxqHHt (5CzpDKCHVLstkRTJpkzXXQ)
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 28),
            width: 473,
            height: 543,
            child: Stack(
              children: [
                const Positioned(
                  // absic3khG (4:312)
                  left: 0,
                  top: 176,
                  child: Align(
                    child: SizedBox(
                      width: 473,
                      height: 364,
                    ),
                  ),
                ),
                Positioned(
                  // handholdsmartphonewithchatting (7:319)
                  left: 54,
                  top: 0,
                  child: Align(
                    child: SizedBox(
                      width: 244,
                      height: 261,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("poto/sps4.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // buttonDzA (7:334)
                  left: 211,
                  top: 507,
                  child: Container(
                    width: 124,
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const Location(),));
                              },
                              child: const Text(
                                "Loc",
                                style: TextStyle(fontSize: 15),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // buttonhomempRTx (33:1545)
                  left: 14,
                  top: 330,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(7, 19, 8, 18),
                    width: 248,
                    height: 107,
                    decoration: BoxDecoration(
                      color: const Color(0x7f000000),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      // laporkankekerasandiadukansajag (33:1547)
                      child: SizedBox(
                        child: Container(
                          constraints: const BoxConstraints(
                            maxWidth: 233,
                          ),
                          child: const Text(
                            'Laporkan kekerasan di Adukan Saja!',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              height: 1.445,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // frame3jd4 (4:182)
            margin: const EdgeInsets.fromLTRB(74, 0, 0, 0),
            width: 212.01,
            height: 37,
          ),
        ],
      ),
    );
  }
}
