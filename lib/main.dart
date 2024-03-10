import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Kartu Nama',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              PersonCard(
                Nama: 'Septi Isdayanna',
                NIM: 22091397045,
                Prodi: 'D4 Manajemen Informatika',
                imageUrl: 'android/assets/foto/Yanna.jpg',
              ),
              PersonCard(
                Nama:'Septian Nur Ikhsan',
                NIM: 22091397049,
                Prodi: 'D4 Manajemen Informatika',
                imageUrl: 'android/assets/foto/Septian.jpg',
              ),
              PersonCard(
                Nama: 'Eva Fitria Novianti P',
                NIM: 22091397068,
                Prodi: 'D4 Manajemen Informatika',
                imageUrl: 'android/assets/foto/Eva.png',
              ),
            ],
          ),
        ),
        backgroundColor: Colors.blueAccent,
      ),
    ),
  );
}

class PersonCard extends StatelessWidget {
  final String Nama;
  final int NIM;
  final String Prodi;
  final String imageUrl;

  PersonCard({
    required this.Nama,
    required this.NIM,
    required this.Prodi,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              imageUrl,
              width: 100.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 0.0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center, // Menempatkan teks di tengah
                children: [
                  Text(
                    'Nama: $Nama',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center, // Menyusun teks di tengah
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'NIM: $NIM',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Prodi: $Prodi',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
