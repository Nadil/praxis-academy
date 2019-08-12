# Latihan

1. Pada latihan ini menjalankan instalasi dari flutter, android sdk, plugin flutter, lalu dihubungkan dengan device dan dijalankan main.dart.

 # Kasus 1

Pada kasus ini adalah menghapus semua isi dari lib/main.dart dan digantid dengan kode untuk menampilkan "Hello World" pada layar.

```
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
```

Aplikasi yang terdapat pada device menjalankan fungsi main() => runApp. KOde ini menggunakan kelas `MyApps` dengan `StatelessWidged` agar bersifat immutable. `Widget build` digunakan untuk membuat halaman pada aplikasi dan `MaterialApp` untuk style UI nya. `Scaffold` adalah kode untuk membuat konten rancangan UI-nya.

***External Package**

Untuk menggunakan packages dapat ditambahkan nama dan versi library pada `pubspec.yaml`. Contoh di bawah ini menggunakan paket `english_word` untuk meng-generate kata bahasa iggris secara acak. 

```
dependencies:
  flutter:
    sdk: flutter

  cupertino_icons: ^0.1.0
  english_words: ^3.1.0
  ```