import 'package:a_helloworld/a_helloworld.dart' as a_helloworld;

// Library untuk input
import 'dart:io';

/// Fungsi [main] akan menampilkan 2 output
/// Output pertama menampilkan teks dan output kedua menampilkan hasil perkalian pada library [a_helloworld]
void main(List<String> arguments) {
  // // Mencetak Hello Dart! Dart is great. pada konsol
  // print('Hello Dart! Dart is great.');
  // // Testing documentation comment with [].
  // print('Hello world: ${a_helloworld.calculate()}!');

  // 1.1 membuat aplikasi input ===============================================
  print('Nama anda: ');
  String name = stdin.readLineSync()!;
  stdout.write('Usia anda: ');
  int age = int.parse(stdin.readLineSync()!);
  print('Halo $name, usia Anda $age tahun');

  // Jika kode Anda berbeda karena menggunakan print() maka tidak masalah. Statement print()
  // dan stdout.write() memiliki fungsi yang sama yaitu untuk menampilkan suatu objek ke konsol.
}
