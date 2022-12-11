import 'package:c22_101/pages/daftar.dart';
import 'package:c22_101/pages/main_page.dart';
import 'package:c22_101/service/auth_service.dart';
import 'package:c22_101/shared/constants.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ListContactPage extends StatefulWidget {
  const ListContactPage({super.key, this.id, this.onDelete});
  final String? id;
  final Function? onDelete;

  @override
  State<ListContactPage> createState() => _ListContactPageState();
}

class _ListContactPageState extends State<ListContactPage> {
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
          onPressed: () async {
            // ignore: use_build_context_synchronously
            nextScreen(context, const MainPage());
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
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
                                  width:
                                      MediaQuery.of(context).size.width * 0.5,
                                  height: 30,
                                  child: Text(
                                    alldata[index]['name'],
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16,
                                        color: Colors.white),
                                  ),
                                ),
                                Text(alldata[index]['address'],
                                    style: const TextStyle(
                                        fontSize: 14, color: Colors.white)),
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
                                        backgroundColor:
                                            const Color(0xff6251da),
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.arrow_circle_right,
                                        size: 30,
                                        color: Colors.white,
                                      )),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  DetailContactPage(
                                                    id: snapshot
                                                        .data!.docs[index].id,
                                                  )),
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
    );
  }
}

////////////////////////////////////////////////////////
class DetailContactPage extends StatefulWidget {
  const DetailContactPage({this.id});

  final String? id;

  @override
  State<DetailContactPage> createState() => _DetailContactPageState();
}

class _DetailContactPageState extends State<DetailContactPage> {
  final _formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var noHpController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();

  FirebaseFirestore firebase = FirebaseFirestore.instance;
  CollectionReference? contact;

  void getData() async {
    contact = firebase.collection('contact');

    if (widget.id != null) {
      var data = await contact!.doc(widget.id).get();
      var item = data.data() as Map<String, dynamic>;
      setState(() {
        nameController = TextEditingController(text: item['name']);
        noHpController = TextEditingController(text: item['noHp']);
        emailController = TextEditingController(text: item['email']);
        addressController = TextEditingController(text: item['address']);
      });
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1c1a67),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "CONTACT DARURAT",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
          onPressed: () {
            nextScreen(context, const ListContactPage());
          },
        ),
      ),
      body: Form(
        key: _formKey,
        child: ListView(padding: const EdgeInsets.all(16.0), children: [
          const SizedBox(
            height: 90,
          ),
          const Text(
            'Name',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: nameController,
            decoration: InputDecoration(
                hintText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.white,
                filled: true),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Name is Required!';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          const Text(
            'Phone Number',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: noHpController,
            decoration: InputDecoration(
                hintText: "Phone Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.white,
                filled: true),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Phone Number is Required!';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          const Text(
            'Email',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
                hintText: "Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.white,
                filled: true),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Email is Required!';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          const Text(
            'Address',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: addressController,
            keyboardType: TextInputType.multiline,
            minLines: 2,
            maxLines: null,
            decoration: InputDecoration(
                hintText: "Address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.white,
                filled: true),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Address is Required!';
              }
              return null;
            },
          ),
        ]),
      ),
    );
  }
}
