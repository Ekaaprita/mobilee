import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobilekelomp/controllers/auth_controller.dart';
import 'package:mobilekelomp/controllers/home_screen_controller.dart';
import 'package:mobilekelomp/controllers/tap_bar_controller.dart';
import 'package:mobilekelomp/widgets/tap_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  TapBarController tapBarController = Get.put(TapBarController());
  final AuthController authController = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        authController.signOut();
                      },
                      child: Icon(CupertinoIcons.back),
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                        color: Color(0xff644444),
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Icon(CupertinoIcons.person),
                  ],
                ),
              ),
              Obx(() {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          tapBarController.setCurrentIndex(0);
                        },
                        child: TapBar(
                          bgColor: tapBarController.currentIndex == 0
                              ? 0xff644444
                              : 0xffffffff,
                          name: "ALL",
                          textColor: tapBarController.currentIndex == 0
                              ? 0xffffffff
                              : 0xff644444,
                        ),
                      ),
                      SizedBox(width: 16),
                      GestureDetector(
                        onTap: () {
                          tapBarController.setCurrentIndex(1);
                        },
                        child: TapBar(
                          bgColor: tapBarController.currentIndex == 1
                              ? 0xff644444
                              : 0xffffffff,
                          name: "CHILD",
                          textColor: tapBarController.currentIndex == 1
                              ? 0xffffffff
                              : 0xff644444,
                        ),
                      ),
                      SizedBox(width: 16),
                      GestureDetector(
                        onTap: () {
                          tapBarController.setCurrentIndex(2);
                        },
                        child: TapBar(
                          bgColor: tapBarController.currentIndex == 2
                              ? 0xff644444
                              : 0xffffffff,
                          name: "MAN",
                          textColor: tapBarController.currentIndex == 2
                              ? 0xffffffff
                              : 0xff644444,
                        ),
                      ),
                      SizedBox(width: 16),
                      GestureDetector(
                        onTap: () {
                          tapBarController.setCurrentIndex(3);
                        },
                        child: TapBar(
                          bgColor: tapBarController.currentIndex == 3
                              ? 0xff644444
                              : 0xffffffff,
                          name: "WOMAN",
                          textColor: tapBarController.currentIndex == 3
                              ? 0xffffffff
                              : 0xff644444,
                        ),
                      ),
                    ],
                  ),
                );
              }),
              Obx(() {
                return Container(
                  height: 420,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            left: index == 0 ? 16 : 8,
                            right: index == 5 - 1 ? 16 : 8,
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(96 + 48),
                                  topRight: Radius.circular(96 + 48),
                                ),
                                child: Image.network(""),
                              ),
                              Positioned(
                                bottom: 48,
                                left: 16,
                                child: Container(
                                  width: 200,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'product1',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        SizedBox(height: 8),
                                        Text('12000'),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      }),
                );
              }),
              Container(
                margin: EdgeInsets.only(left: 16),
                child: Text(
                  "Paling Terpopular",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                height: 500,
                padding: EdgeInsets.all(16),
                child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 180, 134, 134),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(32),
                                topRight: Radius.circular(32),
                              ),
                            ),
                            child: Obx(() {
                              return Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(32)),
                                    child: Image.network(
                                      "",
                                      width: 100,
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  Container(
                                    width: 200,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'product1',
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                        Text('12000'),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            }),
                          ),
                          SizedBox(height: 16),
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
