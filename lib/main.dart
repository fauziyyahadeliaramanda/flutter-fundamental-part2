import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Bagian title row
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text('41'),
        ],
      ),
    );

    // Bagian button row
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    // Praktikum 3: Bagian text section
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
       'Wisata Gunung di Batu merupakan salah satu destinasi alam yang populer di Malang, '
    'dikenal dengan pemandangan alamnya yang indah, udara sejuk, dan jalur pendakian yang menantang. '
    'Tempat ini cocok untuk pecinta alam, fotografer, dan wisata keluarga. '
    'Hasil pekerjaan ini dibuat oleh Fauziyyah Adelia Ramanda, NIM 2341760145. ',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fauziyyah 2341760145'),
        ),
       body: ListView(
          children: [
            Image.asset(
              'images/gunungpanderman.png',
              width: 600,
              height:240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection, // <--- ditambahkan di sini
          ],
        ),
      ),
    );
  }

  // Fungsi buat button column
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
