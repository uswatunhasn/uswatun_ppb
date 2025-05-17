import 'package:flutter/material.dart';

void main() => runApp(ProfilApp());

class ProfilApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Rara',
      debugShowCheckedModeBanner: false,
      home: ProfilPage(),
    );
  }
}

class ProfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Header + Foto Profil (pakai placeholder)
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -40,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.person,
                          size: 50,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),

                // Nama
                Text(
                  'Uswatun Hasanah',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Mahasiswa Teknik Informatika',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                Divider(height: 30, thickness: 1, indent: 40, endIndent: 40),

                // Info
                InfoTile(
                  icon: Icons.school,
                  label: 'Universitas Islam Negeri Alauddin Makassar',
                ),
                InfoTile(icon: Icons.numbers, label: 'NIM: 60200123003'),
                InfoTile(icon: Icons.cake, label: '03 November 2005'),
                InfoTile(icon: Icons.place, label: 'Nusa Tenggara Barat'),

                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Saya saat ini sedang belajar Flutter. '
                    'Saat ini saya sedang belajar pemrograman perangkat bergerak.',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;

  InfoTile({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.teal),
      title: Text(label),
    );
  }
}