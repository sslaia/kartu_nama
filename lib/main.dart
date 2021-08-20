import 'package:flutter/material.dart';
import 'package:linkable/linkable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // Kita definisikan beberapa variable,
  // yang akan kita gunakan di dalam badan kode di bawah
  String _namaPengguna = "BEBALAZI ZEGA";
  String _pekerjaan = "MOBILE DEVELOPMENT CONSULTANT";
  String _nomorTelepon = "+62 8210786462";
  String _alamatEmail = "bebalazi@email.com";
  String _alamatRumah = "Jl. Merdeka No. 7, Jakarta 13730";
  String _petaRumah = "https://goo.gl/maps/2z2kEe4Q6g9mWNfC6";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Dari sini kita mulai membangun kerangka aplikasi
      home: Scaffold(
        // Memasang warna latar belakang keseluruhan aplikasi
        backgroundColor: Colors.indigo,
        // Memasang baris di sebelah atas di mana judul halaman ditayangkan
        // Barangkali untuk aplikasi Kartu Nama hal ini tidak perlu
        // appBar: AppBar(
        //    title: Text("Kartu Nama"),
        //  ),
        body: Column(
          // Untuk membuat seluruh konten tampil di tengah layar (atas ke bawah)
          // gunakan parameter mainAxisAlignment: MainAxisAlignment.center,
          // Kalau perlu membuat konten berada di tengah (antara kiri dan kanan)
          // gunakan parameter crossAxisAlignment: CrossAxisAlignment.center,
          //
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Gunakan widget CircleAvater untuk membuat foto/gambar
            // tampil bundar seperti layaknya foto profil.
            // Parameternya berbeda dengan widget Image
            // Gunakan paramaeter radius dan backgroundImage
            CircleAvatar(
              radius: 75.0,
              backgroundImage: AssetImage('images/foto_saya.jpg'),
            ),
            // Membuat supaya teks lebih besar (fontSize) dan lebih tebal (fontWeight)
            Linkable(
              text: _namaPengguna,
              style: TextStyle(
                fontSize: 36.0,
                color: Colors.white,),
            ),
            // SizedBox hanya sekedar membuat jarak antar widget
            SizedBox(
              width: 150.0,
              height: 12.0,
            ),
            // Membuat huruf menjadi lebih berjarak dan dalam bentuk kapital
            Linkable(
              text: _pekerjaan,
              style: TextStyle(
                fontSize: 14.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            // SizedBox hanya sekedar membuat jarak antar widget
            SizedBox(
              width: 150.0,
              height: 24.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            // Supaya menarik kita tempatkan nomor telepon dll dalam widget Card
            Card(
              elevation: 16.0,
              margin: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.teal,
                ),
                // Ganti widget Text menjadi Linkable
                // untuk membuat nomor telp dll bisa diklik
                title: Linkable(
                  text: _nomorTelepon,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 16.0,
              margin: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                // Ganti widget Text menjadi Linkable
                // untuk membuat nomor telp dll bisa diklik
                title: Linkable(
                  text: _alamatEmail,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
            Card(
              elevation: 16.0,
              margin: EdgeInsets.symmetric(
                vertical: 8.0,
                horizontal: 16.0,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.location_city_rounded,
                  color: Colors.teal,
                ),
                // Untuk sementara kita membuka peta melalui satu URL
                // Solusi lebih baik: buka langsung, tapi butuh persiapan lebih,
                // karena perlu mendapat kode khusus (API) dari  Google Maps
                title: Linkable(
                  text: _alamatRumah + "\n" + _petaRumah,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.teal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

