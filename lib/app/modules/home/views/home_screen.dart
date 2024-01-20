import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/screen_controller.dart';

class HomeScreen extends GetView<ScreenController> {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Judul Artikel
            Text(
              'Notary APP',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0), // Spasi antara judul dan isi artikel
            // Isi Artikel
            Text(
              'Notary App ini adalah Aplikasi Konsultasi dengan Notaris tentang hal-hal berkaitan dengan Hukum'
              'mengesahkan dokumen hukum, menyaksikan perjanjian, dan memberikan legalisasi pada tindakan hukum tertentu.'
              'Kegunaan notaris melibatkan berbagai aspek dalam proses hukum, terutama dalam konteks pembuatan dokumen dan perjanjian hukum. ',
              style: TextStyle(
                fontSize: 17.0,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
