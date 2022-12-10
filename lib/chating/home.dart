import 'package:c22_101/chating/chat.dart';
import 'package:c22_101/chating/login.dart';
import 'package:c22_101/chating/profile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = 'home_page';
  
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {  
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;
  late User? _activeUser;

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      _activeUser = _auth.currentUser;
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: const Text('Home'),
              leading: const Icon(Icons.home),
              onTap: () {
                navigator.pushReplacementNamed(HomePage.id);
              },
            ),
            ListTile(
              title: const Text('Profile'),
              leading: const Icon(Icons.person),
              onTap: () {
                navigator.pushReplacementNamed(ProfilePage.id);
              },
            ),
            ListTile(
              title: const Text('Chat'),
              leading: const Icon(Icons.chat),
              onTap: () {
                navigator.pushReplacementNamed(ChatPage.id);
              },
            ),
            ListTile(
              title: const Text('LogOut'),
              leading: const Icon(Icons.logout),
              onTap: () async {
                await _auth.signOut();

                navigator.pushReplacementNamed(LoginPage.id);
              },
            ),              
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('APP'),
      ),

      body: Container(),
    );
  }
}