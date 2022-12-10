import 'package:c22_101/common/decoration.dart';
import 'package:c22_101/common/image_view.dart';
import 'package:c22_101/common/style.dart';
import 'package:c22_101/pages/main_page.dart';
import 'package:c22_101/utils/color.dart';
import 'package:c22_101/utils/utils.dart';
import 'package:c22_101/utils/utils_image.dart';
import 'package:c22_101/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProtectSelfPage extends StatelessWidget {
  const ProtectSelfPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.whiteA700,
        body: Column(
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
                              left: 18,
                              top: 5,
                              right: 18,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_circle_left_outlined,
                                size: 30,
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
                                      alignment: Alignment.topRight,
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
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            height: getVerticalSize(
                                              409.00,
                                            ),
                                            width: getHorizontalSize(
                                              339.00,
                                            ),
                                            margin: getMargin(
                                              left: 10,
                                              top: 157,
                                              bottom: 157,
                                            ),
                                            child: Stack(
                                              alignment: Alignment.bottomRight,
                                              children: [
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Container(
                                                    margin: getMargin(
                                                      bottom: 1,
                                                    ),
                                                    decoration: AppDecoration
                                                        .fillIndigo900cc
                                                        .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder20,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomButton(
                                                          width: 287,
                                                          text:
                                                              "Menghindari area yang rawan akan aksi kejahatan"
                                                                  .tr,
                                                          margin: getMargin(
                                                            left: 15,
                                                            top: 16,
                                                            right: 15,
                                                          ),
                                                        ),
                                                        CustomButton(
                                                          width: 287,
                                                          text:
                                                              "Mengenakan perhiasan sewajarnya"
                                                                  .tr,
                                                          margin: getMargin(
                                                            left: 15,
                                                            top: 10,
                                                            right: 15,
                                                          ),
                                                        ),
                                                        CustomButton(
                                                          width: 287,
                                                          text:
                                                              "Membawa alat sederhana yang bisa melindungi diri"
                                                                  .tr,
                                                          margin: getMargin(
                                                            left: 15,
                                                            top: 10,
                                                            right: 15,
                                                          ),
                                                        ),
                                                        CustomButton(
                                                          width: 287,
                                                          text:
                                                              "tidak membawa uang cash dalam jumlah banyak"
                                                                  .tr,
                                                          margin: getMargin(
                                                            left: 15,
                                                            top: 10,
                                                            right: 15,
                                                          ),
                                                        ),
                                                        CustomButton(
                                                          width: 287,
                                                          text:
                                                              "Mengikuti kegiatan yang bisa melindungi diri"
                                                                  .tr,
                                                          margin: getMargin(
                                                            left: 15,
                                                            top: 10,
                                                            right: 15,
                                                          ),
                                                        ),
                                                        CustomButton(
                                                          width: 287,
                                                          text:
                                                              "Melatih intuisi agar lebih peka"
                                                                  .tr,
                                                          margin: getMargin(
                                                            left: 15,
                                                            top: 10,
                                                            right: 15,
                                                          ),
                                                        ),
                                                        CustomButton(
                                                          width: 287,
                                                          text:
                                                              "Peka terhadap lingkungan sekitar"
                                                                  .tr,
                                                          margin: getMargin(
                                                            left: 15,
                                                            top: 10,
                                                            right: 15,
                                                            bottom: 137,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: Padding(
                                                    padding: getPadding(
                                                      left: 10,
                                                      top: 10,
                                                      right: 8,
                                                    ),
                                                    child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgInfo63x44,
                                                      height: getVerticalSize(
                                                        63.00,
                                                      ),
                                                      width: getHorizontalSize(
                                                        44.00,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
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
                                        Align(
                                          alignment: Alignment.topCenter,
                                          child: Container(
                                            margin: getMargin(
                                              left: 16,
                                              top: 90,
                                              right: 16,
                                              bottom: 90,
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
                                                    253.00,
                                                  ),
                                                  margin: getMargin(
                                                    left: 32,
                                                    top: 6,
                                                    right: 32,
                                                    bottom: 7,
                                                  ),
                                                  child: Text(
                                                    "Berikut adalah kiat - kiat melindungi diri"
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
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Padding(
                                            padding: getPadding(
                                              top: 170,
                                              right: 10,
                                              bottom: 170,
                                            ),
                                            child: CommonImageView(
                                              svgPath: ImageConstant.imgOptions,
                                              height: getVerticalSize(
                                                99.00,
                                              ),
                                              width: getHorizontalSize(
                                                170.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    margin: getMargin(
                                      right: 10,
                                      bottom: 10,
                                    ),
                                    decoration:
                                        AppDecoration.fillIndigo900cc.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder20,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: getHorizontalSize(
                                            164.00,
                                          ),
                                          margin: getMargin(
                                            left: 31,
                                            top: 8,
                                            bottom: 10,
                                          ),
                                          child: Text(
                                            "Kiat - kiat Melindungi Diri".tr,                                            
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtInterBold30,
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 19,
                                            top: 7,
                                            right: 8,
                                          ),
                                          child: CommonImageView(
                                            svgPath: ImageConstant.imgGroup,
                                            height: getVerticalSize(
                                              107.00,
                                            ),
                                            width: getHorizontalSize(
                                              121.00,
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
