import 'package:c22_101/chating/profile.dart';
import 'package:c22_101/common/decoration.dart';
import 'package:c22_101/common/image_view.dart';
import 'package:c22_101/common/style.dart';
import 'package:c22_101/helper/helper_function.dart';
import 'package:c22_101/pages/auth/login_page.dart';
import 'package:c22_101/pages/home_chat_page.dart';
import 'package:c22_101/pages/pengaduan_page.dart';
import 'package:c22_101/pages/protect_self_page.dart';
import 'package:c22_101/service/auth_service.dart';
import 'package:c22_101/shared/constants.dart';
import 'package:c22_101/utils/utils.dart';
import 'package:c22_101/utils/utils_image.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String userName = "";
  String email = "";
  AuthService authService = AuthService();

  @override
  void initState() {
    super.initState();
    gettingUserData();
  }

  // string manipulation
  String getId(String res) {
    return res.substring(0, res.indexOf("_"));
  }

  String getName(String res) {
    return res.substring(res.indexOf("_") + 1);
  }

  gettingUserData() async {
    await HelperFunctions.getUserEmail().then((value) {
      setState(() {
        email = value!;
      });
    });
    await HelperFunctions.getUserName().then((val) {
      setState(() {
        userName = val!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();    

    return Scaffold(
        backgroundColor: Constants().primaryColor,
        appBar: AppBar(
          title: const Text(
            'Adukan Saja!',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Theme.of(context).primaryColor,
          actions: [
            IconButton(
              icon: const Icon(
                Icons.account_circle,
                size: 35,
              ),
              onPressed: () {
                nextScreen(context, ProfilePage());
              },
            )
          ],
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xffe0ddff),
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 50),
            children: <Widget>[
              Image.asset(
                'assets/vector-6.png',
                height: 150,
                width: 100,
              ),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                height: 2,
              ),              
              ListTile(
                onTap: () {},
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                leading: const Icon(Icons.settings),
                title: const Text(
                  "Settings",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                onTap: () {},
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                leading: const Icon(Icons.announcement),
                title: const Text(
                  "Tentang Kami",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ListTile(
                onTap: () async {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text("Logout"),
                          content:
                              const Text("Are you sure you want to logout?"),
                          actions: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.cancel,
                                color: Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: () async {
                                await authService.signOut();
                                Navigator.of(context).pushAndRemoveUntil(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const LoginPage()),
                                    (route) => false);
                              },
                              icon: const Icon(
                                Icons.done,
                                color: Colors.green,
                              ),
                            ),
                          ],
                        );
                      });
                },
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                leading: const Icon(Icons.exit_to_app),
                title: const Text(
                  "Logout",
                  style: TextStyle(color: Colors.black),
                ),
              )
            ],
          ),
        ),
        body: Container(
          width: size.width,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                    child: Container(
                  margin: getMargin(
                    left: 13,
                    top: 17,
                    right: 13,
                  ),
                  decoration: AppDecoration.fillGray50.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 15,
                          top: 8,
                          bottom: 8,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgKpai1,
                          height: getVerticalSize(
                            70.00,
                          ),
                          width: getHorizontalSize(
                            57.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 17,
                          top: 5,
                          bottom: 5,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgKppari1,
                          height: getVerticalSize(
                            70.00,
                          ),
                          width: getHorizontalSize(
                            117.00,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 15,
                          top: 7,
                          bottom: 9,
                        ),
                        child: CommonImageView(
                          imagePath: ImageConstant.imgLogolembagape,
                          height: getVerticalSize(
                            70.00,
                          ),
                          width: getHorizontalSize(
                            57.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
                Container(
                  width: double.infinity,
                  margin: getMargin(
                    left: 13,
                    top: 56,
                    right: 11,
                  ),
                  decoration: AppDecoration.outlineBlueA100.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder11,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: 370,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (() {
                            nextScreen(context, const PengaduanPage());
                          }),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff1c1a67),
                            elevation: 0,                            
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text(
                            'Ajukan Aduan',
                            style:
                              TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: 370,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (() {
                            nextScreen(context, const PengaduanPage());
                          }),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff1c1a67),
                            elevation: 0,                            
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text(
                            'Berkonsultasi',
                            style:
                              TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ),
                      const SizedBox(height: 20,),
                      SizedBox(
                        width: 370,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: (() {
                            nextScreen(context, const ProtectSelfPage());
                          }),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff1c1a67),
                            elevation: 0,                            
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          ),
                          child: const Text(
                            'Kiat-Kiat Melindungi Diri',
                            style:
                              TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ),
                      Padding(
                        padding: getPadding(
                          left: 12,
                          top: 110,
                          right: 12,
                          bottom: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            SizedBox(
                              width: 200,
                              height: 60,
                              child: ElevatedButton(
                                onPressed: (() {
                                  // nextScreen(context, const ProtectSelfPage());
                                }),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color(0xffffffff),
                                  elevation: 0,                            
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)
                                  ),
                                  side: const BorderSide(
                                    width: 2,
                                    color: Color(0xff00a3ff)
                                  )
                                ),
                                child: const Text(
                                  'Artikel',
                                  style:
                                    TextStyle(color: Color(0xff00a3ff), fontSize: 18),
                                ),
                              )
                            ),
                            Padding(
                              padding: getPadding(
                                bottom: 2,
                              ),
                              child: CommonImageView(
                                svgPath: ImageConstant.imgFaq,
                                height: getVerticalSize(
                                  86.00,
                                ),
                                width: getHorizontalSize(
                                  129.00,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
