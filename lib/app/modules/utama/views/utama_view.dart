import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controllers/utama_controller.dart';

class UtamaView extends GetView<UtamaController> {
  const UtamaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kantor Notaris'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Notaris Elti Yunani, S.H., M.Kn.'),
            SizedBox(height: 20),
            Text(
                'Alamat : Jalan Thamrin No.67 B - C, Gotong Royong, Kec. Tj. Karang Pusat, Kota Bandar Lampung, Lampung 35214'),
            SizedBox(height: 20),
            Image.asset(
              'img/map.JPG', // Sesuaikan dengan path gambar Anda
              width: 200.0, // Sesuaikan lebar gambar
              height: 200.0, // Sesuaikan tinggi gambar
              fit: BoxFit.cover, // Sesuaikan mode tata letak gambar
            ),
            SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  _launchURL(
                      'https://tawk.to/chat/65aba3338d261e1b5f55ce75/1hkj7b0np');
                },
                child: Text('Klik Untuk Memulai Chat'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Warna latar belakang tombol
                  onPrimary: Colors.white, // Warna teks tombol
                  padding: EdgeInsets.symmetric(
                      horizontal: 10, vertical: 10), // Padding
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Tidak dapat membuka URL: $url';
    }
  }
}
