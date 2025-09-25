import 'package:flutter/material.dart';
import 'about_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengaturan'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Bahasa'),
            subtitle: Text('Indonesia'),
            onTap: () {
              // contoh: buka dialog pilih bahasa
            },
          ),
          ListTile(
            leading: Icon(Icons.color_lens),
            title: Text('Tema'),
            subtitle: Text('Terang'),
            onTap: () {
              // contoh: ganti tema
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Tentang Aplikasi'),
            onTap: () {
              // Navigasi ke AboutScreen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AboutScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
