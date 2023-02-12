import 'package:fier_base/auth/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'Cunst.dart';
import 'package:get/get.dart';

class SingUp extends StatelessWidget {
  SingUp({super.key});

  final TextEditingController _emailAddress = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Future _singUp() async {
      if (_password.text.trim() == _confirmPassword.text.trim()) {
        try {
          UserCredential credential =
              await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailAddress.text.trim(),
            password: _password.text.trim(),
          );
        } on FirebaseAuthException catch (e) {
          if (e.code == 'weak-password') {
            print('The password provided is too weak.');
            return Dialog1("The password provided is too weak.", context);
          } else if (e.code == 'email-already-in-use') {
            print('The account already exists for that email.');
            return Dialog1(
                "The account already exists for that email.", context);
          }
        } catch (e) {
          print(e);
        }
      } else {
        print('Erorr');
        return Dialog1("Erorr password.", context);
      }
    }

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 120,
                ),
                CustomTextTitel(
                  text: "Sing Up",
                  // color: Color(0xFF55287E),
                ),
                const SizedBox(
                  height: 10,
                ),
                SvgPicture.asset(
                  "icons/signup.svg",
                  height: 200,
                  width: 200,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomContainer(
                  text: "Enter Your Username",
                  icon: Icons.person,
                  // textEditingController: _emailAddress,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomContainer(
                  text: "Enter Your Email",
                  icon: Icons.email,
                  textEditingController: _emailAddress,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomContainer(
                  text: "Enter Your Password",
                  icon: Icons.lock,
                  isPassword: true,
                  textEditingController: _password,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomContainer(
                  text: "Confirm Your Password",
                  icon: Icons.lock,
                  isPassword: true,
                  textEditingController: _confirmPassword,
                ),
                const SizedBox(
                  height: 20,
                ),
                CustomMaterialButton(
                  onPressed: () async {
                    var s = await _singUp();
                    print(_emailAddress.text);
                    print(_password.text);
                    if (s != null) {
                      // Navigator.of(context).pushNamed("HomeNew");
                      Get.to(HomeNaew());
                    } else {
                      print(s);
                    }
                    // print("***************");
                    // UserCredential c = await signInWithGoogle();
                    // print(c);
                  },
                  text: "Sing Up",
                ),
                CustomTextlButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("LogIn");
                  },
                  text: "Already have an account ?",
                  text2: "Log In",
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomIcon(
                      onPressed: () {},
                      text: "icons/facebook.svg",
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CustomIcon(
                      onPressed: () async {},
                      text: "icons/twitter.svg",
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    CustomIcon(
                      onPressed: () async {
                        // UserCredential u = await signInWithGoogle();
                        // print(u);
                      },
                      text: "icons/google-plus.svg",
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "images/signup_top.png",
              width: 85,
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
              width: 90,
            ),
          ),
        ],
      ),
    );
  }
}
