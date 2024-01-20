import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notary_app/app/routes/app_pages.dart';

import '../../../controllers/auth_controller.dart';
import '../controllers/reset_password_controller.dart';

class ResetPasswordView extends GetView<ResetPasswordController> {
  final cEmail = TextEditingController();
  final cPass = TextEditingController();
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
              controller: cEmail,
              decoration: InputDecoration(
                labelText: "Email",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => cAuth.resetPassword(cEmail.text),
              child: Text("Reset Password"),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Sudah Punya Akun ?"),
                TextButton(
                  onPressed: () => Get.toNamed(Routes.LOGIN),
                  child: Text("Klik Disini"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
