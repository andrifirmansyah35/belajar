// Text Fireld ------------------------------------------------------------
// String _name = '';
 
// TextField(
//   onChanged: (String value) {
//     setState(() {
//       _name = value;
//     });
//   },
// )

// Parameter onChanged berisi sebuah fungsi yang akan dipanggil setiap terjadi perubahan inputan
// pada TextField. Pada fungsi ini, kita dapat mengubah nilai variabel state dengan memanggil fungsi setState().

// Jika Anda tidak ingin mengambil nilai setiap perubahan, tetapi hanya ketika seluruh input sudah
// selesai di-submit, Anda dapat menggunakan parameter onSubmitted seperti berikut:

// String _name = '';
 
// TextField(
//   onSubmitted: (String value) {
//     setState(() {
//       _name = value;
//     });
//   },
// )


// Cara lain yang bisa kita gunakan adalah dengan TextEditingController. Dengan controller, kita cukup membuat
// variabel TextEditingController lalu menambahkannya ke widget TextField.