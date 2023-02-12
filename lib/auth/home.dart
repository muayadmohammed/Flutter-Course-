import 'package:fier_base/auth/logIn.dart';
import 'package:fier_base/auth/welcome.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeNaew extends StatelessWidget {
  const HomeNaew({super.key});

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    List x = [1, 2, 3, 4, 5, 6, 7];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                Get.to(LogIn());
              },
              icon: const Icon(
                Icons.logout,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: x.length,
          itemBuilder: (context, index) {
            return Card(
              shadowColor: Colors.red[100],
              color: const Color.fromARGB(255, 4, 172, 233),
              elevation: 8,
              child: ListTile(
                trailing: Text("$index"),
                subtitle: Text(
                  user.uid,
                ),
                title: Text(
                  user.email!,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
