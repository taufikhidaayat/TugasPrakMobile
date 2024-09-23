import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Anggotakelompok(),
  ));
}

class Anggotakelompok extends StatelessWidget {
  final List<Map<String, String>> anggotaKelompok = [
    {
      'nama': 'Rivan Adi Pardana',
      'nim': '124220068',
    },
    {
      'nama': 'Taufik Hidayat',
      'nim': '124220076',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anggota Kelompok'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: anggotaKelompok.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10.0),
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    anggotaKelompok[index]['nama']!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    anggotaKelompok[index]['nim']!,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
              side: BorderSide(color: Colors.blueAccent, width: 2),
            ),
            shadowColor: Colors.blueAccent,
            elevation: 5,
          );
        },
      ),
    );
  }
}
