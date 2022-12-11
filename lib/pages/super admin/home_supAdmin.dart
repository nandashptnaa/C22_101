import 'package:c22_101/pages/daftar.dart';
import 'package:c22_101/pages/super%20admin/pengaduan_user.dart';
import 'package:c22_101/service/auth_service.dart';
import 'package:c22_101/shared/constants.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomePageSupAdmin extends StatefulWidget {
  const HomePageSupAdmin({super.key});

  @override
  State<HomePageSupAdmin> createState() => _HomePageSupAdminState();
}

class _HomePageSupAdminState extends State<HomePageSupAdmin> {
  AuthService authService = AuthService();

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firebase = FirebaseFirestore.instance;
    CollectionReference users = firebase.collection('pengaduan');

    return Scaffold(
      backgroundColor: Constants().primaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text("Super Admin"),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.logout,
            size: 30,
          ), 
          onPressed: () async {  
            await authService.signOut();
            // ignore: use_build_context_synchronously
            nextScreen(context, const HomeDaftar());
          },
        ),
      ),
      body: FutureBuilder<QuerySnapshot>(
        future: users.get(),
        builder: (_, snapshot) {
          if (snapshot.hasData) {
            var alldata = snapshot.data!.docs;
            return alldata.length != 0
              ? ListView.builder(
                itemCount: alldata.length,
                  itemBuilder: (_, index) {
                    return Container(
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.white),
                          color: const Color(0xff1c1a67),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [                                
                                SizedBox(
                                  height: 30,
                                  width:MediaQuery.of(context).size.width * 0.5,
                                  child: Text(alldata[index]['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: Colors.white
                                    ),
                                  ),
                                ),
                                Text(alldata[index]['jenisPengaduan'],
                                  style: const TextStyle(
                                    fontSize: 14,
                                    color: Colors.white
                                  )
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  height: 40,
                                  width: 50,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: const CircleBorder(),
                                      backgroundColor:
                                        const Color(0xff6251da),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        Icons.update,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => PengaduanUserPage(
                                            id: snapshot.data!.docs[index].id,
                                          )
                                        ),
                                      );
                                    }
                                  ),
                              ),                                
                              ],
                            )
                          ],
                        ),
                      );                    
                    }
                  )
                : const Center(
                    child: Text(
                      'Empty Data',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  );
          } else {
            return const Center(child: Text("Loading...."));
          }
        },
      ),      
    );
  }
}


