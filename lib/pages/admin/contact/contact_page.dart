import 'package:c22_101/pages/admin/contact/form_contact.dart';
import 'package:c22_101/pages/daftar.dart';
import 'package:c22_101/service/auth_service.dart';
import 'package:c22_101/shared/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key, this.id, this.onDelete});
  final String? id;
  final Function? onDelete;
  

  @override
  Widget build(BuildContext context) {
    AuthService authService = AuthService();
    FirebaseFirestore firebase = FirebaseFirestore.instance;
    CollectionReference users = firebase.collection('contact');    
    return Scaffold(
      backgroundColor: Constants().primaryColor,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.logout,
            size: 30,
          ),
          onPressed: () {
            showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Logout"),
                  content: const Text("Are you sure you want to logout?"),
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
                            builder: (context) => const HomeDaftar()
                          ),
                        (route) => false);
                      },
                      icon: const Icon(
                        Icons.done,
                        color: Colors.green,
                      ),
                    ),
                  ],
                );
              }
            );
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Center(
          child: Text("Contact"),
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
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: 30,
                              child: Text(
                                alldata[index]['name'],
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                  color: Colors.white
                                ),
                              ),
                            ),
                            Text(alldata[index]['address'],
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
                                width: 60,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: const CircleBorder(),
                                    backgroundColor:const Color(0xff6251da),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.update,
                                      color: Colors.white,
                                    )
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => FormContactPage(
                                          id: snapshot.data!.docs[index].id,
                                        )
                                      ),
                                    );
                                  }),
                                ),
                              ],
                            )
                          ],
                        ),
                      );
                    })
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const FormContactPage()),
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
