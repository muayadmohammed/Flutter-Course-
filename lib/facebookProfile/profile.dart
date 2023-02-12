import 'package:flutter/material.dart';
import './info.dart';

class Profile extends StatelessWidget {
  Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(99, 0, 0, 0),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    colorFilter:
                        ColorFilter.mode(Colors.white, BlendMode.color),
                    image: AssetImage('assts/images/d.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 4),
                child: const CircleAvatar(
                  radius: 74.0,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assts/images/me.png'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height / 2.7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 55,
                    ),
                    const Icon(
                      Icons.shield,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                      child: const Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Muayad Mohammed',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Mobile App Development.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(backgroundColor: Colors.blue[800]),
                child: Row(
                  children: const [
                    Icon(Icons.add_circle_rounded),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Add Post')
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                ),
                child: Row(
                  children: const [
                    Icon(Icons.edit),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Add Story')
                  ],
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey[900],
                ),
                child: const Icon(Icons.more_horiz),
              )
            ],
          ),
          Divider(
            thickness: 1,
            height: 10,
            color: Colors.grey[800],
          ),
          Column(
            children: info
                .map<Widget>(
                  (infoList) => infoTemplate(infoList, context),
                )
                .toList(),
          ),

          /*
          Column(
            children: [
              Row(
                children: [
                  const Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width - 50.0,
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 18),
                        children: [
                          TextSpan(
                            text: "Studying department of IT at ",
                            style: const TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: "Altinbas University, Istanbul",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width - 50.0,
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 18),
                        children: [
                          TextSpan(
                            text: "Studying department of IT at ",
                            style: const TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: "Altinbas University, Istanbul",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width - 50.0,
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 18),
                        children: [
                          TextSpan(
                            text: "Studying department of IT at ",
                            style: const TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: "Altinbas University, Istanbul",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.work,
                    color: Colors.white,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    width: MediaQuery.of(context).size.width - 50.0,
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(fontSize: 18),
                        children: [
                          TextSpan(
                            text: "Studying department of IT at ",
                            style: const TextStyle(color: Colors.white),
                          ),
                          TextSpan(
                            text: "Altinbas University, Istanbul",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
*/
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.withOpacity(0.8),
                ),
                child: Text(
                  'Edit public details',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blue[1000],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}

Widget infoTemplate(infoItem, context) {
  return Row(
    children: [
      infoItem.icon,
      const SizedBox(
        width: 5,
      ),
      Container(
        margin: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width - 50.0,
        child: RichText(
          text: TextSpan(
            style: const TextStyle(fontSize: 18),
            children: [
              TextSpan(
                text: infoItem.normalText,
                style: const TextStyle(color: Colors.white),
              ),
              TextSpan(
                text: infoItem.boldText,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    ],
  );
}
