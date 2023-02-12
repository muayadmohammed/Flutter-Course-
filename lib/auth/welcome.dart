import 'package:fier_base/auth/singUp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'Cunst.dart';
import 'logIn.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    langC LangCont = Get.put(langC());
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextTitel(
                  text: "1".tr,
                ),
                const SizedBox(
                  height: 60,
                ),
                SvgPicture.asset(
                  "icons/chat.svg",
                  height: 280,
                  width: 280,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  height: 50,
                  minWidth: 250,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: const Color(0xFF55287E),
                  onPressed: () {
                    // Navigator.of(context).pushNamed("LogIn");
                    Get.to(LogIn());
                    // Get.toNamed("1");
                    // Get.replace("");
                  },
                  child: Text(
                    "2".tr,
                    style: const TextStyle(
                      fontFamily: "Courgette",
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  height: 50,
                  minWidth: 250,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: const Color(0xFFF0E6FF),
                  onPressed: () {
                    // Navigator.of(context).pushNamed("SingUp");
                    Get.to(SingUp());
                  },
                  child: Text(
                    "3".tr,
                    style: const TextStyle(
                      fontFamily: "Courgette",
                      color: Color(0xFF55287E),
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  height: 50,
                  minWidth: 250,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: const Color(0xFFF0E6FF),
                  onPressed: () {
                    LangCont.chang("ar");
                  },
                  child: Text(
                    "4".tr,
                    style: const TextStyle(
                      fontFamily: "Courgette",
                      color: Color(0xFF55287E),
                      fontSize: 25,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                MaterialButton(
                  height: 50,
                  minWidth: 250,
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: const Color(0xFFF0E6FF),
                  onPressed: () {
                    LangCont.chang("en");
                  },
                  child: Text(
                    "5".tr,
                    style: const TextStyle(
                      fontFamily: "Courgette",
                      color: Color(0xFF55287E),
                      fontSize: 25,
                    ),
                  ),
                ),
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
              width: 75,
            ),
          ),
        ],
      ),
    );
  }
}

class local implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          "1": "اهلا بك في تطبيقي",
          "2": "تسجيل الدخول",
          "3": "انشاء حساب",
          "4": "اللغة العربية",
          "5": "English",
        },
        "en": {
          "1": "Welcome to My App",
          "2": "Log In",
          "3": "Sign In",
          "4": "عربي",
          "5": "English",
        },
        "fr": {
          "1": "xxx",
          "2": "bbbb",
        }
      };
}

class langC extends GetxController {
  void chang(String codeLang) {
    Get.updateLocale(Locale(codeLang));
  }
}
/*
عمر تطبيق افلام
خالد سبحة الكترونية
حذيفة مكتبة
عامر ملاحظات
*/