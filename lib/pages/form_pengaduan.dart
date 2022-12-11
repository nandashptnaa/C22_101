import 'package:c22_101/common/decoration.dart';
import 'package:c22_101/common/image_view.dart';
import 'package:c22_101/common/style.dart';
import 'package:c22_101/pages/main_page.dart';
import 'package:c22_101/shared/constants.dart';
import 'package:c22_101/utils/color.dart';
import 'package:c22_101/utils/utils.dart';
import 'package:c22_101/utils/utils_image.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FormPengaduan extends StatefulWidget {
  const FormPengaduan({super.key, this.id});
  final String? id;

  @override
  State<FormPengaduan> createState() => _FormPengaduanState();
}

class _FormPengaduanState extends State<FormPengaduan> {
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
        phoneNumberController =
            TextEditingController(text: item['phoneNumber']);
        emailController = TextEditingController(text: item['email']);
        addressController = TextEditingController(text: item['address']);
        jkController = TextEditingController(text: item['jenisKelamin']);
        pengaduanController =
            TextEditingController(text: item['jenisPengaduan']);
        deskripsiController =
            TextEditingController(text: item['deskripsiPengaduan']);
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
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: getPadding(
                        bottom: 5,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: getPadding(
                                left: 17,
                                top: 5,
                                right: 17,
                              ),
                              child: IconButton(
                                icon: const Icon(
                                Icons.arrow_circle_left_outlined,
                                size: 35,
                                ), 
                                onPressed: () {
                                  nextScreen(context, const MainPage());
                                },
                              )
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: getVerticalSize(
                                846.00,
                              ),
                              width: size.width,
                              child: Stack(
                                alignment: Alignment.topLeft,
                                children: [
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                      height: getVerticalSize(
                                        785.00,
                                      ),
                                      width: size.width,
                                      margin: getMargin(
                                        top: 10,
                                      ),
                                      child: Stack(
                                        alignment: Alignment.bottomCenter,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                bottom: 10,
                                              ),
                                              child: CommonImageView(
                                                imagePath:
                                                    ImageConstant.imgVector2,
                                                height: getVerticalSize(
                                                  663.00,
                                                ),
                                                width: getHorizontalSize(
                                                  360.00,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                              height: getVerticalSize(
                                                6.00,
                                              ),
                                              width: getHorizontalSize(
                                                212.00,
                                              ),
                                              margin: getMargin(
                                                left: 73,
                                                top: 134,
                                                right: 73,
                                                bottom: 134,
                                              ),
                                              decoration: BoxDecoration(
                                                color: ColorConstant.black900,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: getPadding(
                                        right: 10,
                                        bottom: 10,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Container(
                                                decoration: AppDecoration
                                                    .fillIndigo900cc
                                                    .copyWith(
                                                  borderRadius: BorderRadiusStyle
                                                      .roundedBorder20,
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize: MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                      width: getHorizontalSize(
                                                        199.00,
                                                      ),
                                                      margin: getMargin(
                                                        left: 31,
                                                        top: 23,
                                                        bottom: 20,
                                                      ),
                                                      child: Text(
                                                        "Form Pengaduan".tr,
                                                        maxLines: null,
                                                        textAlign: TextAlign.left,
                                                        style: AppStyle
                                                            .txtInterBold36,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        left: 2,
                                                        top: 26,
                                                        bottom: 26,
                                                      ),
                                                      child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgFolder,
                                                        height: getVerticalSize(
                                                          70.00,
                                                        ),
                                                        width: getHorizontalSize(
                                                          99.00,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),                                          
                                          Container(
                                            width: double.infinity,
                                            margin: getMargin(
                                              left: 10,
                                              top: 29,
                                            ),
                                            decoration: AppDecoration
                                                .fillIndigo900cc
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder17,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: getHorizontalSize(
                                                    297.00,
                                                  ),
                                                  margin: getMargin(
                                                    left: 10,
                                                    top: 6,
                                                    right: 10,
                                                    bottom: 7,
                                                  ),
                                                  child: Text(
                                                    "Isi form dibawah ini dengan benar dan jujur! karena semua pernyataan akan dipertanggung jawabkan"
                                                        .tr,
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtInterRegular11,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: getPadding(
                                                left: 81,
                                                top: 109,
                                                right: 233,
                                              ),
                                              child: Text(
                                                "lbl_nama".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtInterRegular11,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                      width: getHorizontalSize(
                                        339.00,
                                      ),
                                      margin: getMargin(
                                        left: 10,
                                        top: 218,
                                        bottom: 218,
                                      ),
                                      decoration: AppDecoration.fillIndigo900cc
                                          .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder20,
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [                                          
                                          CustomTextFormField(
                                            width: 290,
                                            focusNode: FocusNode(),
                                            // controller: controller
                                            //     .groupTwentySixController,
                                            hintText: "Nama Lengkap".tr,
                                            margin: getMargin(
                                              left: 15,
                                              top: 16,
                                              right: 15,
                                            ),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            fontStyle: TextFormFieldFontStyle
                                                .InterRegular11,
                                            controller: nameController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Isi Nama Anda!';
                                              }
                                              return null;
                                            },
                                          ),
                                          CustomTextFormField(
                                            width: 290,
                                            focusNode: FocusNode(),
                                            // controller: controller
                                            //     .groupThirtyThreeController,
                                            hintText: "Email".tr,
                                            margin: getMargin(
                                              left: 15,
                                              top: 10,
                                              right: 15,
                                            ),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            fontStyle: TextFormFieldFontStyle
                                                .InterRegular11,
                                            controller: emailController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Isi Email Anda!';
                                              }
                                              return null;
                                            },
                                          ),
                                          CustomTextFormField(
                                            width: 290,
                                            focusNode: FocusNode(),
                                            hintText: "Alamat".tr,
                                            margin: getMargin(
                                              left: 15,
                                              top: 10,
                                              right: 15,
                                            ),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            fontStyle: TextFormFieldFontStyle
                                                .InterRegular11,
                                            controller: addressController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Isi Alamat Anda';
                                              }
                                              return null;
                                            },
                                          ),
                                          CustomTextFormField(
                                            width: 290,
                                            focusNode: FocusNode(),
                                            hintText: "No Handphone".tr,
                                            margin: getMargin(
                                              left: 15,
                                              top: 10,
                                              right: 15,
                                            ),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            fontStyle: TextFormFieldFontStyle
                                                .InterRegular11,
                                            controller: phoneNumberController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Isi No Handphone Anda!';
                                              }
                                              return null;
                                            },
                                          ),
                                          CustomTextFormField(
                                            width: 290,
                                            focusNode: FocusNode(),
                                            hintText: "Jenis Kelamin".tr,
                                            margin: getMargin(
                                              left: 15,
                                              top: 10,
                                              right: 15,
                                            ),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            fontStyle: TextFormFieldFontStyle
                                                .InterRegular11,
                                            controller: jkController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Isi Jenis Kelamin Anda!';
                                              }
                                              return null;
                                            },
                                          ),
                                          CustomTextFormField(
                                            width: 290,
                                            focusNode: FocusNode(),
                                            hintText: "Jenis Aduan".tr,
                                            margin: getMargin(
                                              left: 15,
                                              top: 10,
                                              right: 15,
                                            ),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            fontStyle: TextFormFieldFontStyle
                                                .InterRegular11,
                                            controller: pengaduanController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Isi Jenis Pengaduan Anda!';
                                              }
                                              return null;
                                            },
                                          ),
                                          CustomTextFormField(
                                            width: 290,
                                            focusNode: FocusNode(),
                                            hintText: "Deskripsikan aduan".tr,
                                            margin: getMargin(
                                              left: 15,
                                              top: 10,
                                              right: 15,
                                              bottom: 14,
                                            ),
                                            variant: TextFormFieldVariant
                                                .FillWhiteA700,
                                            padding: TextFormFieldPadding
                                                .PaddingAll8,
                                            fontStyle: TextFormFieldFontStyle
                                                .InterRegular11,
                                            textInputAction:
                                                TextInputAction.done,
                                            maxLines: 5,
                                            controller: deskripsiController,
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Isi deskripsikan aduan Anda!';
                                              }
                                              return null;
                                            },
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 18, bottom: 5),
                                            child: SizedBox(
                                              width: 350,
                                              height: 30,
                                              child: ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10),
                                                  ),
                                                  backgroundColor: Constants().primaryColor,
                                                ),
                                                child: const Text(
                                                    "Submit",
                                                    style: TextStyle(
                                                        color: Colors.white),
                                                  ),
                                                onPressed: () {
                                                  if (_formKey.currentState!
                                                      .validate()) {                                                    
                                                    if (widget.id == null) {
                                                      users!.add({
                                                        'name':
                                                            nameController.text,
                                                        'phoneNumber':
                                                            phoneNumberController
                                                                .text,
                                                        'email': emailController
                                                            .text,
                                                        'address':
                                                            addressController
                                                                .text,
                                                        'jenisKelamin':
                                                            jkController.text,
                                                        'jenisPengaduan':
                                                            pengaduanController
                                                                .text,
                                                        'deskripsiPenduan':
                                                            deskripsiController
                                                                .text,
                                                      });
                                                    } else {
                                                      users!
                                                          .doc(widget.id)
                                                          .update({
                                                        'name':
                                                            nameController.text,
                                                        'phoneNumber':
                                                            phoneNumberController
                                                                .text,
                                                        'email': emailController
                                                            .text,
                                                        'address':
                                                            addressController
                                                                .text,
                                                        'jenisKelamin':
                                                            jkController.text,
                                                        'jenisPengaduan':
                                                            pengaduanController
                                                                .text,
                                                        'deskripsiPenduan':
                                                            deskripsiController
                                                                .text,
                                                      });
                                                    }
                                                    //snackbar notification
                                                    final snackBar = const SnackBar(
                                                        content: Text(
                                                            'Data saved successfully!'));
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(snackBar);

                                                    //back to main page
                                                    //home page => '/'
                                                    // Navigator.push(
                                                    //     context,
                                                    //     MaterialPageRoute(
                                                    //         builder: (((context) =>
                                                    //             const PengaduanPage()))));
                                                  }
                                                },
                                              ),
                                            ),                                            
                                          ),
                                          const SizedBox(height: 10,)
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
