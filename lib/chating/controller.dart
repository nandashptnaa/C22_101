import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class SwitchController extends GetxController{
  var switchValue = false.obs;
}

class GetxTextController extends GetxController{
  var name = "".obs;
  var email = "".obs;
  var telp = "".obs;
  var alamat = "".obs;

  final emailEditingController = TextEditingController();
  final nameEditingController = TextEditingController();
  final telpEditingController = TextEditingController();
  final alamatEditingController = TextEditingController();
}