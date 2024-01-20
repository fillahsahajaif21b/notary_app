import 'package:google_fonts/google_fonts.dart';
import 'package:notary_app/app/controllers/auth_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:notary_app/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final cAuth = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF7BD3EA),
        title: Text(
          'NOTARY APP',
          style: GoogleFonts.aclonica(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 25, 109, 179),
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        color: Color(0xFF7BD3EA),
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'LOG IN',
              style: GoogleFonts.aclonica(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 25, 109, 179),
              ),
            ),
            SizedBox(height: 40),
            TextField(
              style: TextStyle(color: Colors.black),
              controller: controller.cEmail,
              decoration: InputDecoration(
                hintText: 'Username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: controller.cPass,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () =>
                  cAuth.login(controller.cEmail.text, controller.cPass.text),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shadowColor: Colors.blueAccent,
              ),
              child: Text("Login"),
            ),
            SizedBox(height: 20),
            Text("Belum Punya Akun ?"),
            TextButton(
              onPressed: () => Get.toNamed(Routes.SIGNUP),
              child: Text("Daftar Disini"),
              style: TextButton.styleFrom(primary: Colors.black),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                style: TextButton.styleFrom(primary: Colors.black),
                onPressed: () => Get.toNamed(Routes.RESET_PASSWORD),
                child: Text("Reset Password"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
