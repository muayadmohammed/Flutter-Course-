import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'auth/home.dart';
import 'auth/logIn.dart';
import 'auth/singUp.dart';
import 'auth/welcome.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'onboarding/onboard.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Welcome(),
      /*StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              return const HomeNaew();
            } else {
              return const Welcome();
            }
          })),
*/
      locale: Get.deviceLocale,
      translations: local(),
      //LogIn(),
      routes: {
        "Welcome": (context) => const Welcome(),
        "LogIn": (context) => const LogIn(),
        "SingUp": (context) => SingUp(),
        "HomeNew": (context) => const HomeNaew(),
      },
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class Check extends StatefulWidget {
  const Check({super.key});

  @override
  State<Check> createState() => _CheckState();
}

SingingCharacter? _character = SingingCharacter.lafayette;

class _CheckState extends State<Check> {
  bool x = false;
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ListTile(
            title: const Text('Lafayette'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.lafayette,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          ListTile(
            title: const Text('Thomas Jefferson'),
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.jefferson,
              groupValue: _character,
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
          const Text('CheckBox'),
          Checkbox(
            activeColor: Colors.red,
            checkColor: Colors.black,
            focusColor: Colors.yellow,
            splashRadius: 22,
            side: const BorderSide(color: Colors.blue),
            value: x,
            onChanged: ((value) {
              setState(() {
                x = value!;
              });
            }),
          ),
          const Text('Slider'),
          Slider(
            value: _currentSliderValue,
            max: 100,
            divisions: 10,
            label: _currentSliderValue.round().toString(),
            onChanged: (value) {
              setState(() {
                _currentSliderValue = value;
              });
            },
          )
        ],
      ),
    );
  }
}

class xy extends StatelessWidget {
  const xy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            huzeyfe(
              hasub: Icon(
                Icons.abc,
              ),
              color: Colors.amber,
              rakam1: 100,
              rakam: 300,
            ),
            huzeyfe(
              hasub: Icon(Icons.lock_clock),
              color: Colors.red,
              rakam1: 100,
              rakam: 300,
            ),
          ],
        ));
  }
}

class huzeyfe extends StatelessWidget {
  huzeyfe({
    super.key,
    this.text,
    this.color,
    this.rakam,
    this.first,
    this.rakam1,
    this.hasub,
  });

  String? text;
  Color? color;
  double? rakam;
  double? rakam1;
  int? first;
  Icon? hasub;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: rakam,
      height: rakam1,
      color: color,
      child: hasub!,
    );
  }
}
