import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LogIn1 extends StatelessWidget {
  const LogIn1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 300,
            color: Colors.red,
          ),
          Container(
            margin: const EdgeInsets.only(top: 280),
            height: Get.height - 280,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.arrow_back,
                          size: 50,
                        ),
                      ),
                      SizedBox(
                        width: Get.width / 8,
                      ),
                      const Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: Get.width / 9,
                    height: Get.width / 2,
                    color: Colors.amberAccent,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
