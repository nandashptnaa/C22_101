import 'package:c22_101/helper/helper_function.dart';
import 'package:c22_101/pages/auth/login_page.dart';
import 'package:c22_101/pages/auth/regis_admin_page.dart';
import 'package:c22_101/pages/super%20admin/home_supAdmin.dart';
import 'package:c22_101/service/auth_service.dart';
import 'package:c22_101/service/database_service.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginSupAdminPage extends StatefulWidget {
  const LoginSupAdminPage({Key? key}) : super(key: key);

  @override
  State<LoginSupAdminPage> createState() => _LoginSupAdminPageState();
}

class _LoginSupAdminPageState extends State<LoginSupAdminPage> {
  final formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  bool _isLoading = false;
  AuthServiceSupAdmin authServiceAuthServiceSupAdmin = AuthServiceSupAdmin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _isLoading
          ? Center(
              child: CircularProgressIndicator(
                  color: Theme.of(context).primaryColor),
            )
          : SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
                child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(height: 200),
                        const Text(
                          "Login Super Admin",
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: textInputDecoration.copyWith(
                              labelText: "Email",
                              prefixIcon: Icon(
                                Icons.email,
                                color: Theme.of(context).primaryColor,
                              )),
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },

                          // check tha validation
                          validator: (val) {
                            return RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(val!)
                                ? null
                                : "Please enter a valid email";
                          },
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          obscureText: true,
                          decoration: textInputDecoration.copyWith(
                              labelText: "Password",
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Theme.of(context).primaryColor,
                              )),
                          validator: (val) {
                            if (val!.length < 6) {
                              return "Password harus lebih dari 6 karakter";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: Theme.of(context).primaryColor,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold),
                            ),
                            onPressed: () {
                              login();
                            },
                          ),
                        ),                        
                        const SizedBox(height: 10,),
                        Text.rich(TextSpan(
                          text: "Masuk sebagai user",
                          style: const TextStyle(
                            color: Colors.black, fontSize: 14
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                            nextScreen(context, const LoginPage());
                          }                          
                        )),
                      ],
                    )),
              ),
            ),
    );
  }

  login() async {
    if (formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });
      await authServiceAuthServiceSupAdmin
          .loginSupAdminNameandPassword(email, password)
          .then((value) async {
        if (value == true) {
          QuerySnapshot snapshot =
              await DatabaseServiceSupAdmin(uid: FirebaseAuth.instance.currentUser!.uid)
                  .gettingSupAdminData(email);
          // saving the values to our shared preferences
          await HelperFunctionsSupAdmin.saveSupAdminLoggedStatus(true);
          await HelperFunctionsSupAdmin.saveSupAdminEmail(email);
          await HelperFunctionsSupAdmin.saveUserNameSupAdmin(snapshot.docs[0]['fullName']);
          // ignore: use_build_context_synchronously
          nextScreenReplace(context, const HomePageSupAdmin());
        } else {
          showSnackbar(context, Colors.red, value);
          setState(() {
            _isLoading = false;
          });
        }
      });
    }
  }
}