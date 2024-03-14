LAPORAN PEMROGRAMAN MOBILE KELOMPOK 8 
MEMBUAT KARTU NAMA DENGAN ANDROID STUDIO DAN FLUTTER
 

Dosen Pengampu :
I Gde Agung Sri Sidhimantra, S.Kom., M.Kom.

NAMA KELOMPOK :
1.	Septi Isdayanna 		(22091397045)
2.	Septian Nur Ikhsan 		(22097397049)
3.	Eva Fitria Novianti Putri 	(22097397068)



PROGRAM STUDI D4 MANAJEMEN INFORMATIKA (2022B)
FAKULTAS VOKASI
UNIVERSITAS NEGERI SURABAYA
2024
1.	DIAGRAM ‘CARD_NAME’ 
 
Penjelasan Diagram :
Diagram hierarki ini menunjukkan bahwa dalam aplikasi Flutter, MaterialApp berperan sebagai struktur utama. Di dalam MaterialApp, terdapat Scaffold yang bertindak sebagai kerangka untuk menampilkan antarmuka aplikasi. AppBar menjadi bagian atas dari Scaffold dan menampilkan judul aplikasi. Backgroundcolor digunakan untuk menetapkan warna latar belakang. Body dari Scaffold terdiri dari Center yang berperan sebagai pusat dari konten. Di dalam Center, terdapat Column yang menampilkan beberapa PersonCard.
Tiap PersonCard terdiri dari Card yang berfungsi sebagai kerangka untuk setiap kartu nama. Di dalam Card, terdapat Row yang menampilkan gambar profil dan informasi tentang orang tersebut. ClipRRect digunakan untuk memotong gambar profil menjadi bentuk lingkaran. Image.asset digunakan untuk menampilkan gambar profil. SizedBox digunakan sebagai jarak antara gambar profil dan informasi. Expanded bertindak sebagai kontainer untuk menampilkan informasi tentang orang tersebut. Di dalam Expanded, terdapat Padding yang berperan sebagai jarak antara teks dan kerangka Card. Di dalam Padding, terdapat Column yang menampilkan nama, NIM, dan program studi orang tersebut.
Dalam diagram hirarki di atas, setiap komponen adalah anak dari komponen di atasnya, kecuali MaterialApp dan PersonCard, yang merupakan komponen utama dan kustom.

 
2.	PENJELASAN KODE PADA FOLDER (MAIN.DART)
 
 
 
 
 
‘main.dart’ adalah file utama yang akan dipakai sebagai file utama yang akan kita gunakan sebagai entry point atau titik masuk untuk melakukan eksekusi pada aplikasi yang akan dijalankan. 
●	import 'package:flutter/material.dart';
Ini adalah pernyataan untuk mengimpor pustaka Flutter yang diperlukan, termasuk komponen UI dari paket material.
●	void main() {}
Fungsi main adalah fungsi utama yang akan dieksekusi saat aplikasi Flutter dimulai.
●	runApp()
Metode runApp digunakan untuk menjalankan aplikasi Flutter. Di dalamnya, kita melewatkan widget MaterialApp sebagai widget utama aplikasi.
●	MaterialApp()
Ini adalah widget utama aplikasi yang menyediakan beberapa konfigurasi dasar, seperti tema dan navigator.
●	home: Scaffold()
Widget Scaffold adalah kerangka utama aplikasi yang menyediakan struktur dasar, termasuk app bar dan body.
●	appBar: AppBar()
Widget AppBar adalah elemen antarmuka pengguna yang menyediakan baris judul dan beberapa aksi.
●	title: Text()
Widget Text digunakan untuk menampilkan teks. Di sini, kita memberikan judul "Kartu Nama" dengan gaya teks berwarna putih.
●	backgroundColor: Colors.indigo,
Mengatur warna latar belakang app bar menjadi nila (Colors.indigo).
●	body: Center()
Widget Center digunakan untuk menempatkan elemen-elemen anaknya ke tengah layar. Di dalamnya, kita memiliki widget Column yang menampung beberapa kartu nama.
●	child: Column()
Menyusun widget Column dalam satu kolom secara vertikal dan horizontal dengan menggunakan MainAxisAlignment.center dan CrossAxisAlignment.center.
●	PersonCard Instances:
Tiga instans dari widget PersonCard ditampilkan di dalam Column. Setiap instansinya mewakili kartu nama satu individu dengan informasi seperti nama, NIM, prodi, dan URL gambar.
●	backgroundColor: Colors.blueAccent,
Digunakan untuk mengatur warna latar belakang body menjadi biru muda (Colors.blueAccent).
●	class PersonCard extends StatelessWidget {
Membuat kelas PersonCard sebagai custom widget untuk menampilkan kartu nama individu.
●	PersonCard({
Menerima parameter yang diperlukan untuk membuat kartu nama individu.

●	@override
Widget build(BuildContext context) {
Mengimplementasikan metode build yang mengembalikan widget untuk menampilkan kartu nama.
●	Return Card(
Menggunakan widget Card sebagai wadah kartu nama dengan memberikan margin: EdgeInsets.all(10.0) yang digunakan untuk memberikan jarak antara kartu nama dengan elemen-elemen di sekitarnya..
●	Row(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
Menyusun child widget dalam satu baris secara horizontal dengan mengatur CrossAxisAlignment.start.
●	ClipRRect( dan child: Image.asset(
ClipRRect digunakan untuk memotong sudut gambar dan membuatnya berbentuk melengkung. Image.asset menampilkan gambar menggunakan path dari assets.
●	SizedBox
SizedBox(width: 8.0), memberikan jarak antara gambar dan informasi di sebelah kanannya.
•	Expanded(
Menggunakan widget Expanded untuk memastikan bahwa bagian informasi kartu nama dapat memanfaatkan sebanyak mungkin ruang yang tersedia.
•	Class: Padding(
Padding digunakan untuk memberikan ruang di sekitar elemen-elemen di dalamnya.
•	Class: Column di dalam Expanded
Menggunakan widget Column untuk menyusun informasi individu secara vertikal.
•	Text Widgets:
Tiga elemen teks menampilkan informasi seperti Nama, NIM, dan Program Studi. Pengaturan gaya dan format tertentu diterapkan pada teks Nama.
•	Size dBox:
Digunakan untuk memberikan jarak antara elemen-elemen teks di dalam kolom.


 
3.	PENJELASAN KODE PADA FOLDER (PUBSPEC.YAML)
 
‘pubspec.yaml’ adalah file konfigurasi yang digunakan oleh Flutter untuk mengelola dependensi, pengaturan proyek, dan sumber daya lainnya.
●	name: card_name
Ini menentukan nama proyek. Disini, proyek dinamai "card_name".
●	description: "A new Flutter project."
Deskripsi singkat tentang proyek. Dalam hal ini, deskripsi adalah "A new Flutter project."
●	publish_to: 'none' 
Ini menentukan tempat di mana proyek akan dipublikasikan. Dalam hal ini, publish_to diatur ke 'none', yang berarti proyek ini tidak akan dipublikasikan ke pub.dev (tempat umum untuk publikasi paket Flutter).
●	version: 1.0.0+1
Versi proyek. Formatnya adalah major.minor.patch+build, di mana:
○	major: Versi utama.
○	minor: Versi minor.
○	patch: Pembaruan kecil.
○	build: Nomor build.
○	Di sini, versi adalah "1.0.0+1".
●	environment:  sdk: '>=3.3.0 <4.0.0'
Menentukan lingkungan yang diperlukan untuk menjalankan proyek. Di sini, spesifikasinya adalah SDK Flutter minimal yang dibutuhkan, yaitu minimal versi 3.3.0 dan kurang dari 4.0.0.
●	dependencies:
●	  flutter:
●	    sdk: flutter
●	  cupertino_icons: ^1.0.6
Daftar dependensi yang dibutuhkan oleh proyek. Dalam hal ini:
○	flutter: SDK Flutter itu sendiri. Versi yang spesifikasikan di sini adalah yang terkini pada saat proyek dibuat.
○	cupertino_icons: Dependensi yang menyediakan ikon-ikon gaya Cupertino (pengaturan default untuk iOS dalam Flutter). Versi yang spesifikasikan adalah minimal 1.0.6.

●	dev_dependencies:
●	  flutter_test:
●	    sdk: flutter
●	  flutter_lints: ^3.0.0
Dependensi yang hanya dibutuhkan selama pengembangan. Dalam hal ini:
○	flutter_test: Paket Flutter untuk menulis dan menjalankan tes unit. Ini hanya dibutuhkan selama pengembangan. Versi yang spesifikasikan adalah SDK Flutter terkini.
○	flutter_lints: Paket yang menyediakan aturan linter tambahan untuk Flutter. Ini membantu memeriksa kode Anda agar sesuai dengan standar kode yang dianjurkan. Versi yang spesifikasikan adalah minimal 3.0.0.
●	flutter:
●	  assets:
●	  - android/assets/foto/ 
●	  uses-material-design: true
Konfigurasi spesifik untuk Flutter:
○	assets: Menentukan sumber daya yang disertakan dalam proyek. Di sini, android/assets/foto/ adalah aset yang disertakan, yang berarti terdapat beberapa foto dalam folder foto dalam folder assets lalu dalam folder android akan dimasukkan dalam aplikasi.
○	uses-material-design: Mengindikasikan bahwa proyek ini menggunakan desain material (desain default untuk aplikasi Flutter).

4.	DOKUMENTASI CARD NAME

![Alt Text](https://github.com/Evafitrianp/Membuat-Card_Name/blob/main/Dokumentasi_Card_Name.jpeg)
