// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Ini judul yang akan berlaku untuk seluruh aplikasi
      title: 'Kartu Nama',
      home: Scaffold(
        // Ini judul yang akan berlaku untuk layar tertentu yang sedang kita lihat
        // Kalau aplikasi memiliki beberapa layar berbeda
        // maka judulnya bisa berbeda-beda.
        appBar: AppBar(
          title: const Text('Kartu Nama'),
        ),
        body: Column(
          // Untuk membuat seluruh konten tampil di tengah layar (atas ke bawah)
          // gunakan parameter mainAxisAlignment: MainAxisAlignment.center,
          // Kalau perlu membuat konten berada di tengah (antara kiri dan kanan)
          // gunakan parameter crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Gunakan widget CircleAvater untuk membuat foto/gambar
            // tampil bundar seperti layaknya foto profil.
            // Parameternya berbeda dengan widget Image
            // Gunakan paramaeter radius dan backgroundImage
            CircleAvatar(
              radius: 75.0,
              backgroundImage: AssetImage('images/foto_saya.jpg'),
            ),
            // Memasang foto/gambar dari media penyimpanan lokal.
            // Pastikan telah membuat folder images
            // dan mengaktifkan folder tsb. dalam berkas pubspec.yaml
            //
            // Gunakan parameter width untuk mengontrol ukuran foto/gambar
            // Image(
            //   image: AssetImage('images/foto_saya.jpg'),
            //   width: 150,
            // ),
            //
            // Memasang foto/gambar dari Internet
            //
            // Kalau ukuran gambar/foto terlalu besar dan yang tampak di layar
            // tidak memuaskan, gunakan parameter fit: BoxFit.cover
            // untuk membuatnya tampak semua
            //
            // Image(
            //   width: 150,
            //   fit: BoxFit.cover,
            //   image: NetworkImage(
            //       'https://m.psecn.photoshelter.com/img-get/I0000dIsj0QKU4ZE/s/650/650/asia-indonesia-sumatra-Nias-Lagundri-5038.jpg'),
            // ),
            //
            // Membuat supaya teks lebih besar (fontSize) dan lebih tebal (fontWeight)
            Text(
              'Bebalazi Ndruru',
              style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
            ),
            //
            // Untuk mengakomodasi dua widget untuk nomor telepon (Icon  dan Text)
            // gunakan widget Row
            // Lalu untuk membuat ruang antara keduanya gunakan widget SizedBox
            //
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone, color: Colors.blue),
                SizedBox(width: 12.0),
                Text('08210786462'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}