import 'package:flutter/material.dart';

class TampilData extends StatelessWidget {
  final String nama;
  final String nim;
  final String tahunLahir;

  TampilData({
    required this.nama,
    required this.nim,
    required this.tahunLahir,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Mahasiswa',
          style: TextStyle(color: Color(0xFF413291)),
        ),
        backgroundColor: Color(0xFFFAF0EB),
      ),
      body: Container(
        color: Color(0xFFFAF0EB),
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Informasi Mahasiswa',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF413291),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Icon(Icons.person, color: Color(0xFF413291)),
                      SizedBox(width: 10),
                      Text(
                        'Nama: $nama',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF413291),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.badge, color: Color(0xFF413291)),
                      SizedBox(width: 10),
                      Text(
                        'NIM: $nim',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF413291),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Icon(Icons.calendar_today, color: Color(0xFF413291)),
                      SizedBox(width: 10),
                      Text(
                        'Tahun Lahir: $tahunLahir',
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xFF413291),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Kembali',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF413291),
                        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        textStyle: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}