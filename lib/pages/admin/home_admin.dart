import 'package:c22_101/pages/auth/register_page.dart';
import 'package:c22_101/pages/daftar.dart';
import 'package:c22_101/shared/constants.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePageAdmin extends StatefulWidget {
  const HomePageAdmin({super.key});

  @override
  State<HomePageAdmin> createState() => _HomePageAdminState();
}

class _HomePageAdminState extends State<HomePageAdmin> {
  final _auth = FirebaseAuth.instance;
  
  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [            
            ListTile(
              title: const Text('LogOut'),
              leading: const Icon(Icons.logout),
              onTap: () async {
                await _auth.signOut();
                // ignore: use_build_context_synchronously
                nextScreen(context, const HomeDaftar());
              },
            ),              
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Admin'),
      ),

      body: Container(),
    );
  }
}