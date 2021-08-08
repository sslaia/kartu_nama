import 'package:flutter/material.dart';
import 'package:linkable/linkable.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const KartuNama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Kita definisikan beberapa variable,
  // yang akan kita gunakan di dalam badan kode di bawah
  String _namaPengguna = "BEBALAZI NDRURU";
  String _pekerjaan = "MOBILE DEVELOPMENT CONSULTANT";
  String _nomorTelepon = "+62 8210786462";
  String _alamatEmail = "bebalazi@email.com";
  String _alamatRumah = "Jl. Merdeka No. 7, Jakarta 13730";

  @override
  Widget build(BuildContext context) {
    // Dari sini kita mulai membangun kerangka aplikasi
    return Scaffold(
      // Memasang warna latar belakang keseluruhan aplikasi
      backgroundColor: Colors.indigo,
      // Memasang baris di sebelah atas di mana judul halaman ditayangkan
      // Barangkali untuk aplikasi Kartu Nama hal ini tidak perlu
      // appBar: AppBar(
      //   title: Text("Kartu Nama"),
      // ),
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
          Text(
            _namaPengguna,
            style: TextStyle(
                fontSize: 36.0,
                color: Colors.white,),
          ),
          // SizedBox hanya sekedar membuat jarak
          SizedBox(
            width: 150.0,
            height: 12.0,
          ),
          Text(
            _pekerjaan,
            style: TextStyle(
              fontSize: 14.0,
              letterSpacing: 2.5,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          // SizedBox hanya sekedar membuat jarak
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
              title: Text(
                _alamatRumah,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.teal,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
