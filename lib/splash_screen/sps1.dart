// ignore_for_file: camel_case_types

import 'package:c22_101/splash_screen/sps2.dart';
import 'package:flutter/material.dart';

class sps1 extends StatefulWidget {
  const sps1({super.key});

  @override
  State<sps1> createState() => _sps1State();
}

class _sps1State extends State<sps1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // sps1Cfk (1:7)
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 44),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff7ab7ff),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // frame1SKC (3:142)
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 119),
            width: double.infinity,
            height: 21,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // timelightvkA (3:143)
                  margin: const EdgeInsets.fromLTRB(0, 0, 219, 0),
                  width: 54,
                  height: 21,
                ),
                Container(
                  // statusiconsoox (3:144)
                  margin: const EdgeInsets.fromLTRB(0, 4.5, 0, 4.5),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // networksignallightWiN (3:145)
                        margin: const EdgeInsets.fromLTRB(0, 0, 6.5, 0),
                        width: 16.5,
                        height: 10,
                      ),
                      Container(
                        // wifisignallightB3p (3:146)
                        margin: const EdgeInsets.fromLTRB(0, 0, 4.75, 0),
                        width: 14.25,
                        height: 10,
                      ),
                      Container(
                        // batterylight3bp (3:147)
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
            // autogrouppkucY2n (5CzoEveaNgNk4vVvqPpKuC)
            margin: const EdgeInsets.fromLTRB(0, 0, 0, 29),
            width: 473,
            height: 531,
            child: Stack(
              children: [
                Positioned(
                  // absic2ie (4:307)
                  left: 0,
                  top: 165,
                  child: Container(
                    width: 473,
                    height: 364,
                    child: Stack(
                      children: [
                        Positioned(
                          // ellipse1Wti (4:306)
                          left: 103,
                          top: 186,
                          child: Align(
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // rectangle30Phc (4:301)
                          left: 200,
                          top: 108,
                          child: Align(
                            child: SizedBox(
                              width: 273,
                              height: 256,
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(45),
                                  color: const Color(0xff6251da),
                                ),
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          // rectangle294ok (4:300)
                          left: 0,
                          top: 0,
                          child: Align(
                            child: SizedBox(
                              width: 252,
                              height: 238,
                            ),
                          ),
                        ),
                        Positioned(
                          // buttonhomempMH4 (33:1539)
                          left: 11,
                          top: 153,
                          child: Container(
                            width: 297,
                            height: 107,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle352tz (33:1540)
                                  left: 0,
                                  top: 0,
                                  child: Align(
                                    child: SizedBox(
                                      width: 283.36,
                                      height: 107,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: const Color(0x7f000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  child: const Align(
                                    child: Text(
                                      'Kekerasan adalah hal yang harus diatasi',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  // freevectorstopgenderviolenceco (6:318)
                  left: 88,
                  top: 0,
                  child: Align(
                    child: SizedBox(
                      width: 208.48,
                      height: 250,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/sps2.jpeg"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  // buttonLwc (7:322)
                  left: 112,
                  top: 495,
                  child: Container(
                    width: 140,
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
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Sps2(),));
                              },
                              child: const Text(
                                "Mulai Tur",
                                style: TextStyle(fontSize: 15),
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // frame2Xei (4:170)
            margin: const EdgeInsets.fromLTRB(74, 0, 73.99, 0),
            padding: const EdgeInsets.fromLTRB(31, 0, 31, 0),
            width: double.infinity,
            height: 36,
            child: Container(
              // group2CVx (4:171)
              width: double.infinity,
              height: 12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // rectangle26uQN (4:172)
                    width: 60,
                    height: 12,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xff3d3bc6),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    // rectangle27ALJ (4:173)
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
                    // rectangle284An (4:174)
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
