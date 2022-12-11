import 'package:c22_101/pages/super%20admin/home_supAdmin.dart';
import 'package:c22_101/shared/constants.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PengaduanUserPage extends StatefulWidget {
  const PengaduanUserPage({super.key, this.id});
  final String? id;

  @override
  State<PengaduanUserPage> createState() => _PengaduanUserPageState();
}

class _PengaduanUserPageState extends State<PengaduanUserPage> {
  final _formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var phoneNumberController = TextEditingController();
  var jkController = TextEditingController();
  var emailController = TextEditingController();
  var addressController = TextEditingController();
  var pengaduanController = TextEditingController();
  var deskripsiController = TextEditingController();

  FirebaseFirestore firebase = FirebaseFirestore.instance;
  CollectionReference? users;

  void getData() async {
    users = firebase.collection('pengaduan');

    if (widget.id != null) {
      var data = await users!.doc(widget.id).get();
      var item = data.data() as Map<String, dynamic>;

      setState(() {
        nameController = TextEditingController(text: item['name']);
        phoneNumberController = TextEditingController(text: item['phoneNumber']);
        emailController = TextEditingController(text: item['email']);
        addressController = TextEditingController(text: item['address']);
        jkController = TextEditingController(text: item['jenisKelamin']);
        pengaduanController = TextEditingController(text: item['jenisPengaduan']);
        deskripsiController = TextEditingController(text: item['deskripsiPengaduan']);
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
          "Data Pengaduan User",
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
            nextScreen(context, const HomePageSupAdmin());
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
                hintText: "Alamat",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.white,
                filled: true),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Alamat is Required!';
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
            controller: phoneNumberController,
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
            'Jenis Kelamin',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: jkController,
            decoration: InputDecoration(
                hintText: "Jenis Kelamin",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.white,
                filled: true),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Isi Jenis Kelamin Anda!';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          const Text(
            'Jenis Aduan',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: pengaduanController,
            decoration: InputDecoration(
                hintText: "Jenis Aduan",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.white,
                filled: true),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Isi Jenis Pengaduan Anda!';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          const Text(
            'Dekripsi Aduan',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: deskripsiController,
            decoration: InputDecoration(
                hintText: "Dekripsikan Aduan",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                fillColor: Colors.white,
                filled: true),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Isi Jdeskripsi aduan Anda!';
              }
              return null;
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ]),
      ),
      floatingActionButton: FloatingActionButton( 
        backgroundColor: Constants().primaryColor,
        onPressed: () {},    
        child: widget.id != null
          ? IconButton(
              onPressed: () {
                users!.doc(widget.id).delete();
                nextScreenReplace(context, const HomePageSupAdmin());
                final snackBar = const SnackBar(content: Text('Delete data successfully!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              icon: const Icon(
                Icons.delete,
                size: 35,
              ))
              
          : 
        const Icon(
          Icons.delete,
          size: 35,
        )
      ),
    );
  }
}

