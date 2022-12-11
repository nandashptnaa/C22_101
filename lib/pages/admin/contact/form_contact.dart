import 'package:c22_101/pages/admin/contact/contact_page.dart';
import 'package:c22_101/shared/constants.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class FormContactPage extends StatefulWidget {
  const FormContactPage({this.id});

  final String? id;

  @override
  State<FormContactPage> createState() => _FormContactPageState();
}

class _FormContactPageState extends State<FormContactPage> {
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
          "CONTACT FORM",
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
            nextScreen(context, const ContactPage());
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
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Constants().primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "SUBMIT",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                if (widget.id == null) {
                  contact!.add({
                    'name': nameController.text,
                    'noHp': noHpController.text,
                    'email': emailController.text,
                    'address': addressController.text
                  });
                } else {
                  contact!.doc(widget.id).update({
                    'name': nameController.text,
                    'noHp': noHpController.text,
                    'email': emailController.text,
                    'address': addressController.text
                  });
                }
                final snackBar =
                    const SnackBar(content: Text('Data saved successfully!'));
                ScaffoldMessenger.of(context).showSnackBar(snackBar);                
              }
            },
          )
        ]),
      ),
      floatingActionButton: FloatingActionButton( 
        backgroundColor: Constants().primaryColor,
        onPressed: () {},    
        child: widget.id != null
          ? IconButton(
              onPressed: () {
                contact!.doc(widget.id).delete();
                nextScreenReplace(context, const ContactPage());
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

