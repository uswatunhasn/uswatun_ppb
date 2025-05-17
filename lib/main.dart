import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catatan Keren',
      home: CatatanPage(),
    );
  }
}

class CatatanPage extends StatelessWidget {
  final List<String> catatan = [
    'Belajar Flutter',
    'Kerjain Tugas PBP',
    'Ngopi dulu biar waras',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Catatan'),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: catatan.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 4,
              child: ListTile(
                leading: Icon(Icons.note),
                title: Text(catatan[index]),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // belum ada fungsinya, cuma dummy
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.deepPurple,
      ),
    );
  }
}
