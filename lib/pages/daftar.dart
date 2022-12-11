import 'package:c22_101/helper/helper_function.dart';
import 'package:c22_101/pages/auth/login_admin_page.dart';
import 'package:c22_101/pages/auth/login_page.dart';
import 'package:c22_101/pages/auth/register_page.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class HomeDaftar extends StatefulWidget {
  const HomeDaftar({super.key});

  @override
  State<HomeDaftar> createState() => _HomeDaftarState();
}

class _HomeDaftarState extends State<HomeDaftar> {
  bool _isSignedIn = false;
  bool _signedIn = false;

  @override
  void initState() {
    super.initState();
    getAdminLoggedInStatus();
    getSupAdminLoggedInStatus();
  }

  getAdminLoggedInStatus() async {
    await HelperFunctionsAdmin.getAdminLoggedStatus().then((value) {
      if (value != null) {
        setState(() {
          _isSignedIn = value;
        });
      }
    });
  }

  getSupAdminLoggedInStatus() async {
    await HelperFunctionsSupAdmin.getSupAdminLoggedStatus().then((value) {
      if (value != null) {
        setState(() {
          _signedIn = value;
        });
      }
    });
  }

  Widget pageHome(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 170),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 300 * fem,
              width: 300 * fem,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 0, right: 0, bottom: 10),
                child: Image.asset(
                  'assets/man-standing-with-an-open-computer-in-his-hands-performing-a-work-task.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(
                width: 100,
                child: ElevatedButton(
                  onPressed: (() {
                    nextScreen(context, const RegisterPage());
                  }),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60)),
                  ),
                  child: const Text(
                    'Daftar',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )),
            const SizedBox(height: 10),
            Text.rich(TextSpan(
              text: "Sudah Punya Akun? ",
              style: const TextStyle(color: Colors.black, fontSize: 16),
              children: <TextSpan>[
                TextSpan(
                    text: "Login",
                    style: const TextStyle(
                        color: Colors.black,
                        decoration: TextDecoration.underline,
                        fontSize: 16),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        nextScreen(context, const LoginPage());
                      }),
              ],
            )),
            const SizedBox(height: 10),
            Text.rich(TextSpan(
                text: "Masuk sebagai admin ",
                style: const TextStyle(color: Colors.black, fontSize: 14),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    nextScreen(context, const LoginAdminPage());
                  })),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _isSignedIn ? pageHome(context) : pageHome(context));
  }

  Widget supAdmin(BuildContext context) {
    return Scaffold(body: _signedIn ? pageHome(context) : pageHome(context));
  }
}
