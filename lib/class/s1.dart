import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import 'customDrawer.dart';


class CustomScraeen extends StatelessWidget {
  const CustomScraeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.abc),
      ),
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assts/images/d.png",
            height: 300,
            fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.all(15.0),
                child: CostContainer(height: 10, width: 100),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: CostContainer(height: 10, width: 100),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: CostContainer(height: 10, width: 100),
              ),
            ],
          ),
          /*
          Expanded(
            child: ListView.builder(
                padding: const EdgeInsets.only(top: 15),
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: 200,
                          height: 180,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.photo,
                            size: 180,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: CostContainer(height: 10, width: 150),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(15.0),
                            child: CostContainer(height: 10, width: 100),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Row(
                              children: const [
                                CostContainer(height: 30, width: 30),
                                SizedBox(
                                  width: 20,
                                ),
                                CostContainer(height: 30, width: 30),
                                SizedBox(
                                  width: 20,
                                ),
                                CostContainer(height: 30, width: 30),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  );
                })),
          )
       */

          ListView(
            shrinkWrap: true,
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset(
                    "assts/images/d.png",
                    height: 400,
                    color: Colors.red,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    height: 400,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Colors.red.shade100,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  ListView(
                    padding: const EdgeInsets.all(50),
                    shrinkWrap: true,
                    children: [
                      Container(
                        height: 50,
                        // width: 75,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      Container(
                        height: 50,
                        // width: 75,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CostContainer extends StatelessWidget {
  const CostContainer({super.key, required this.height, required this.width});
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
