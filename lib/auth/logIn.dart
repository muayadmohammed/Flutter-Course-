import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'Cunst.dart';
import 'home.dart';
import 'welcome.dart';

class LogIn extends StatefulWidget {
  const LogIn({
    super.key,
  });

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final TextEditingController _emailAddress = TextEditingController();
  final TextEditingController _password = TextEditingController();
  GlobalKey<FormState> formstate = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Future _LogIn() async {
      try {
        UserCredential credential =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailAddress.text.trim(),
          password: _password.text.trim(),
        );
        // return credential.user;
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
          return Dialog1("No user found for that email.", context);
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
          return Dialog1("Wrong password provided for that user.", context);
        }
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextTitel(
                  text: "Login",
                ),
                const SizedBox(
                  height: 25,
                ),
                SvgPicture.asset(
                  "icons/login.svg",
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomContainer(
                  text: "Enter Your Email",
                  icon: Icons.person,
                  textEditingController: _emailAddress,
                ),

                const SizedBox(
                  height: 20,
                ),

                CustomContainer(
                  text: "Enter Your Password",
                  icon: Icons.lock,
                  textEditingController: _password,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomMaterialButton(
                  text: "LogIn",
                  onPressed: () async {
                    var x = await _LogIn();
                    print(_emailAddress.text);
                    print(_password.text);

                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => HomeNaew()));
                  },
                ),
                const SizedBox(
                  height: 2,
                ),
                //"Don't have an account ? Sing Up"

                CustomTextlButton(
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    Navigator.of(context).pushNamed('Welcome');
                  },
                  text: "Don't have an account ?",
                  text2: "Sing Up",
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "images/main_top.png",
              width: 75,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "images/main_bottom.png",
              width: 50,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              "images/login_bottom.png",
              width: 110,
            ),
          ),
        ],
      ),
    );
  }
}

class xx extends StatelessWidget {
  xx({
    super.key,
    required this.text,
    required this.color,
  });
  String text;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w400,
        fontFamily: "Gilroy Pro",
        fontSize: 40,
        shadows: const [
          Shadow(
            color: Color(0xFF55287E),
            blurRadius: 2,
          ),
        ],
      ),
    );
  }
}
