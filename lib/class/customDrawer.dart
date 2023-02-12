import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4.2,
          color: const Color.fromARGB(255, 78, 3, 122),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              top: 50,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assts/images/d.png"),
                      fit: BoxFit.cover,
                    ),
                    color: Color.fromARGB(255, 78, 3, 122),
                    // borderRadius: BorderRadius.circular(50),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Muayad Mohammed",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "muayadmohammed3@gmail.com",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        ListView(
          padding: const EdgeInsets.only(top: 20),
          shrinkWrap: true,
          children: const [
            ListDrawer(
              iconData: Icons.home,
              text: "Page 1",
            ),
            SizedBox(
              height: 25,
            ),
            ListDrawer(
              iconData: Icons.tram,
              text: "Page 2",
            ),
            SizedBox(
              height: 25,
            ),
            ListDrawer(
              iconData: Icons.whatshot,
              text: "About",
            ),
          ],
        ),
      ],
    );
  }
}

class d2 extends StatelessWidget {
  const d2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const UserAccountsDrawerHeader(
            accountName: Text("Muayad"),
            accountEmail: Text("muayad"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.red,
            )),
        ListView(
          padding: EdgeInsets.zero,
          shrinkWrap: true,
          children: [
            ListTile(
              onTap: () {
                print("123");
              },
              leading: const Icon(Icons.home),
              title: Text("home"),
            ),
            Divider(
              thickness: 5.4,
              color: Colors.red,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text("home"),
            ),
            Divider(
              thickness: 5.4,
              color: Colors.red,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text("home"),
            ),
            Divider(
              thickness: 5.4,
              color: Colors.red,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: Text("home"),
            ),
          ],
        ),
      ],
    );
  }
}

class ListDrawer extends StatelessWidget {
  final String text;
  final IconData iconData;
  const ListDrawer({
    super.key,
    required this.iconData,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.start, children: [
      Icon(
        iconData,
        size: 30,
      ),
      const SizedBox(
        width: 20,
      ),
      Text(
        text,
        style: const TextStyle(
          fontSize: 15,
          color: Colors.black,
        ),
      ),
    ]);
  }
}
