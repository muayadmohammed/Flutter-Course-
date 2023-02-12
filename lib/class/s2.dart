import 'package:flutter/material.dart';
import 'package:get/get.dart';

class S2 extends StatelessWidget {
  const S2({super.key});

  @override
  Widget build(BuildContext context) {
    final double _size = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
      //   actions: const [
      //     Icon(Icons.person),
      //     Icon(Icons.person),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: const Text("He'd have you all unravel at the"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text('Heed not the rabble'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text('Sound of screams but the'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text('Who scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Revolution is coming...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[600],
            child: const Text('Revolution, they...'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[100],
            child: const Text("He'd have you all unravel at the"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[200],
            child: const Text('Heed not the rabble'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[300],
            child: const Text('Sound of screams but the'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[400],
            child: const Text('Who scream'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.teal[500],
            child: const Text('Revolution is coming...'),
          ),
          _ConstCont(_size, Colors.yellow),
        ],
      ),

      /*Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blue[200],
          ),
          ConstCont(height: _size / 1.09, color: Colors.blueAccent),
          ConstCont(height: _size / 1.4, color: Colors.purple),
          ConstCont(height: _size / 2, color: Colors.orange),

          // Container(
          //   height: _size / 2,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       begin: Alignment.topCenter,
          //       end: Alignment.bottomCenter,
          //       stops: const [0.1, 0.5],
          //       colors: [
          //         Colors.orange.withOpacity(0.7),
          //         Colors.orange.withOpacity(0.3),
          //       ],
          //     ),
          //     borderRadius:
          //         const BorderRadius.only(bottomLeft: Radius.circular(100.0)),
          //   ),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.end,
          //     // crossAxisAlignment: CrossAxisAlignment.end,
          //     children: [
          //       Text("mmmmm"),
          //     ],
          //   ),
          //   // transformAlignment: Alignment.bottomCenter,
          // ),

          ConstCont(height: _size / 3.5, color: Colors.white),
        ],
      ),*/
    );
  }

  Container _ConstCont(double height, Color color) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.1, 0.5],
          colors: [
            color.withOpacity(0.7),
            color.withOpacity(0.3),
          ],
        ),
        borderRadius:
            const BorderRadius.only(bottomLeft: Radius.circular(100.0)),
      ),
    );
  }
}

class ConstCont extends StatelessWidget {
  const ConstCont({super.key, required this.height, required this.color});
  final double height;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [0.1, 0.5],
          colors: [
            color.withOpacity(0.7),
            color.withOpacity(0.3),
          ],
        ),
        borderRadius:
            const BorderRadius.only(bottomLeft: Radius.circular(100.0)),
      ),
      // transformAlignment: Alignment.bottomCenter,
    );
  }
}

class SliverAppBarw extends StatelessWidget {
  const SliverAppBarw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            pinned: true,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
