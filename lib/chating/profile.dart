import 'package:c22_101/chating/controller.dart';
import 'package:c22_101/chating/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  static const String id = 'profile_page';

  ProfilePage({super.key});

  final SwitchController sw = Get.put(SwitchController());
  final GetxTextController tc = Get.put(GetxTextController());

  Widget profile() {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 80),
            const Text(
              'PROFILE',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            TextField(
              decoration: const InputDecoration(
                labelText: "Masukkan nama lengkap",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.all(8)
              ),
              controller: tc.nameEditingController,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Masukkan Email",
              ),
              controller: tc.emailEditingController,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Masukkan No Telp",
              ),
              controller: tc.telpEditingController,
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Masukkan Alamat",
              ),
              controller: tc.alamatEditingController,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                tc.name.value = tc.nameEditingController.text;
                tc.email.value = tc.emailEditingController.text;
                tc.telp.value = tc.telpEditingController.text;
                tc.alamat.value = tc.alamatEditingController.text;
                Get.to(SecondPage());
              },
              // style: ElevatedButton.styleFrom(
              //   backgroundColor: Colors.orange[800],
              // ),
              child: const Text("SUBMIT"),
            ),
          ],
        ));
  }

  Widget _dprofile(){
    final GetxTextController tc = Get.find();

    return Container(
      child: Column(
        children: [
          Obx(
            () => Text(tc.name.value),
          ),
          Obx(
            () => Text(tc.email.value),
          ),
          Obx(
            () => Text(tc.telp.value),
          ),
          Obx(
            () => Text(tc.alamat.value),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final navigator = Navigator.of(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(onPressed: ((){
            navigator.pushReplacementNamed(HomePage.id);
          }), icon: const Icon(Icons.arrow_circle_left))
        ],

        // title: const Text(
        //   "My Profile",
        //   style: TextStyle(
        //       fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        // ),
        // actions: [
        //   Obx(
        //     () => Switch(
        //       value: sw.switchValue.value,
        //       onChanged: (newValue){
        //         sw.switchValue(newValue);
        //       })
        //   )
        // ],
      ),
      body: Container(
        color: const Color(0xff263a96),
        child: ListView(
          children: [
            // SingleChildScrollView(
            //   scr
            // )
            profile(),
            _dprofile(),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {  
  final GetxTextController tc = Get.find();

  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Obx(
            () => Text(tc.name.value),
          ),
          Obx(
            () => Text(tc.email.value),
          ),
          Obx(
            () => Text(tc.telp.value),
          ),
          Obx(
            () => Text(tc.alamat.value),
          ),
        ],
      ),
    );
  }
}
