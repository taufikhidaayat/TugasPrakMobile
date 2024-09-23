import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GenapGanjil(),
  ));
}

class GenapGanjil extends StatefulWidget {
  @override
  _GenapGanjilState createState() => _GenapGanjilState();
}

class _GenapGanjilState extends State<GenapGanjil> {
  final TextEditingController _controller = TextEditingController();
  String? _hasil;

  void cekGenapGanjil() {
    final int? angka = int.tryParse(_controller.text);

    if (angka == null) {
      setState(() {
        _hasil = 'Harap masukkan angka yang valid';
      });
      return;
    }

    setState(() {
      if (angka % 2 == 0) {
        _hasil = 'Angka $angka adalah Genap';
      } else {
        _hasil = 'Angka $angka adalah Ganjil';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cek Bilangan Ganjil Genap'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.cyan, Colors.indigo],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan Angka',
                labelStyle: TextStyle(
                  color: Colors.indigo,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.indigo,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.cyan,
                    width: 2,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: cekGenapGanjil,
              child: Text('Cek'),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.indigo,
                padding: EdgeInsets.symmetric(vertical: 15),
                textStyle: TextStyle(fontSize: 18),
                shadowColor: Colors.cyan,
                elevation: 5,
              ),
            ),
            SizedBox(height: 20),
            if (_hasil != null)
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.purpleAccent, Colors.pinkAccent],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      offset: Offset(4, 4),
                    ),
                  ],
                ),
                child: Text(
                  _hasil!,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
