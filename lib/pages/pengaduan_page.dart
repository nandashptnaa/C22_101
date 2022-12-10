import 'package:c22_101/pages/auth/login_page.dart';
import 'package:c22_101/pages/form_pengaduan.dart';
import 'package:c22_101/pages/main_page.dart';
import 'package:c22_101/service/auth_service.dart';
import 'package:c22_101/shared/constants.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class PengaduanPage extends StatefulWidget {
  const PengaduanPage({super.key});

  @override
  State<PengaduanPage> createState() => _PengaduanPageState();
}

class _PengaduanPageState extends State<PengaduanPage> {
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
              child: Text("PENGADUAN"),
            ),            
          ),
          
          body: FutureBuilder<QuerySnapshot>(
            future: users.get(),
            builder: (_, snapshot) {              
              if (snapshot.hasData) {                
                var alldata = snapshot.data!.docs;
                return alldata.length != 0 ? ListView.builder(
                    itemCount: alldata.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(alldata[index]['name'][0]),
    
                        ),
                        title: Text(alldata[index]['name'], style: const TextStyle(fontSize: 20)),
                        subtitle: Text(alldata[index]['jenisPengaduan'], style: const TextStyle(fontSize: 16)),
                        trailing: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => FormPengaduan(id: snapshot.data!.docs[index].id,)),
                            );
                          },
                          icon: const Icon(
                            Icons.update,
                            size:  35,
                          ),
                        ),
                      );
                    }) : const Center( 
                      child: Text(
                        'Empty Data', 
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white
                        ),
                      ),
                    );
              } else {
                return const Center(child: Text("Loading...."));
              }
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FormPengaduan()),
              );
            },
            child: const Icon(Icons.add),
          ),
        );
      }
    }

