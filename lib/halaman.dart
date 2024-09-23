import 'package:flutter/material.dart';
import 'anggotakelompok.dart';
import 'aritmatika.dart';
import 'ganjilgenap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin UPN',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Halaman(),
    );
  }
}

class Halaman extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DASHBOARD'),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // Aksi untuk profil
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                children: [
                  Text(
                    'ADMIN UPN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Selamat Datang',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Anggota Kelompok'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => Anggotakelompok())));
              },
            ),
            ListTile(
              title: Text('Aritmatika'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => Aritmatika())));
                // Aksi untuk Menu Aritmatika
              },
            ),
            ListTile(
              title: Text('Ganjil Genap'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => GenapGanjil())));
                // Aksi untuk Menu Ganjil Genap
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          children: [
            CardItem(
              title: 'Anggota Kelompok',
              icon: Icons.group,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Anggotakelompok()),
                );
              },
            ),
            CardItem(
              title: 'Aritmatika',
              icon: Icons.calculate,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Aritmatika()),
                );
              },
            ),
            CardItem(
              title: 'Ganji Genap',
              icon: Icons.list,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GenapGanjil()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  CardItem({required this.title, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 4,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.purple),
              SizedBox(height: 10),
              Text(title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
