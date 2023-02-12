
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimatedCOntainer extends StatefulWidget {
  const AnimatedCOntainer({super.key});

  @override
  State<AnimatedCOntainer> createState() => _AnimatedCOntainerState();
}

class _AnimatedCOntainerState extends State<AnimatedCOntainer> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Stack(
            children: [
              AnimatedContainer(
                //Animated flutter
                width: selected ? 100.0 : 100.0,
                height: selected ? 100.0 : 200.0,
                color: selected ? Colors.red : Colors.blue,
                alignment: selected
                    ? Alignment.center
                    : AlignmentDirectional.topCenter,
                duration: const Duration(
                  seconds: 1,
                ),
                curve: Curves.linear,
                child: const Icon(
                  Icons.add,
                  size: 50,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Animated_Positioned extends StatefulWidget {
  const Animated_Positioned({super.key});

  @override
  State<Animated_Positioned> createState() => _Animated_PositionedState();
}

class _Animated_PositionedState extends State<Animated_Positioned> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 200,
        height: 350,
        child: Stack(
          children: [
            AnimatedPositioned(
              width: selected ? 200.0 : 50.0,
              height: selected ? 50.0 : 200.0,
              left: 10,
              top: selected ? 50.0 : 150.0,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: Container(
                  color: Colors.red,
                  alignment: Alignment.center,
                  child: const Text('Tap me'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliverAppBarw extends StatelessWidget {
  SliverAppBarw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List im = [
      'assets/images/1.jpeg',
      'assets/images/bg.jpg',
      'assets/images/me.png',
    ];
    List te = [
      '1111',
      '222222',
      '33333',
    ];
    return Scaffold(
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            expandedHeight: 150.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              centerTitle: true,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: im.length,
              (context, index) {
                return InkWell(
                  onTap: () {
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (context) => Welcome(),
                    //   ),
                    // );
                    // Get.to(Welcome(x: index));
                  },
                  child: Container(
                    color: index.isEven ? Colors.white : Colors.red,
                    height: 100.0,
                    child: Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage("${im[index]}"),
                        ),
                        Text("${te[index]}"),
                      ],
                    )),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              // Get.defaultDialog(title: "I am a dialog");
              // Get.snackbar('Hi', 'Message');
              // Get.defaultDialog();

              Get.defaultDialog(
                  title: "Welcome to Flutter Dev'S",
                  middleText:
                      "FlutterDevs is a protruding flutter app development company with "
                      "an extensive in-house team of 30+ seasoned professionals who know "
                      "exactly what you need to strengthen your business across various dimensions",
                  backgroundColor: Colors.teal,
                  titleStyle: TextStyle(color: Colors.white),
                  middleTextStyle: TextStyle(color: Colors.white),
                  radius: 30);
            },
            icon: Icon(Icons.add),
          )
        ],
      ),
    );
  }
}
