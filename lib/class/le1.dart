import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Les extends StatefulWidget {
  const Les({super.key});

  @override
  State<Les> createState() => _LesState();
}

class _LesState extends State<Les> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png",
            height: Get.height / 2.5,
            width: 300,
            fit: BoxFit.fitWidth,
            colorBlendMode: BlendMode.color,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 8,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                ),
                Container(
                  height: 8,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                ),
                Container(
                  height: 8,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(25)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 20),
              shrinkWrap: true,
              itemCount: 30,
              itemBuilder: (context, index) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 150,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(
                        Icons.photo,
                        color: Colors.grey.shade400.withOpacity(0.9),
                        size: 120,
                      ),
                    ),
                  ),
                  Container(
                    width: Get.width - 220,
                    height: 100,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CostumContainer(
                          height: 8,
                          width: Get.width / 2.5,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CostumContainer(
                          height: 8,
                          width: 100,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CostumContainer(
                              height: 30,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            CostumContainer(
                              height: 30,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            CostumContainer(
                              height: 30,
                              width: 30,
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                          ],
                        ),
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

class CostumContainer extends StatelessWidget {
  CostumContainer({
    super.key,
    required this.height,
    required this.width,
  });
  double height;
  double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }
}
