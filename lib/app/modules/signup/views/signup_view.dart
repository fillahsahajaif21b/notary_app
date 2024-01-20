import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notary_app/app/controllers/auth_controller.dart';
//import 'package:notary_app/app/routes/app_pages.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
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
              'SIGN UP',
              style: GoogleFonts.aclonica(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 25, 109, 179),
              ),
            ),
            SizedBox(height: 40),
            TextField(
              controller: controller.cEmail,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                labelText: "Email",
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: controller.cPass,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
                labelText: "Password",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                onPrimary: Colors.white,
                shadowColor: Colors.blueAccent,
              ),
              onPressed: () => cAuth.signup(
                controller.cEmail.text,
                controller.cPass.text,
              ),
              child: Text("Daftar"),
            ),
          ],
        ),
      ),
    );
  }
}
