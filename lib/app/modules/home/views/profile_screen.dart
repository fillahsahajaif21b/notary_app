import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Profile'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Foto Profil
            CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage(
                  'img/profile.png'), // Ganti dengan path ke foto profil Anda
            ),
            SizedBox(height: 20),
            // Biodata
            ListTile(
              title: Text('Nama: Elti Yunani, S.H., M.Kn.'),
            ),
            ListTile(
              title: Text('Umur: 47 tahun'),
            ),
            ListTile(
              title: Text(
                  'Latar Belakang Pendidikan: Sarjana Hukum dan Magister Kenotarisan'),
            ),
            ListTile(
              title: Text('Pengalaman Kerja: 13 Tahun (Sebagai Notaris)'),
            ),
          ],
        ),
      ),
    );
  }
}
