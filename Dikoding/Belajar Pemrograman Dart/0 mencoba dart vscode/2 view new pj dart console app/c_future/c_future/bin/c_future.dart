// Future<String> getOrder() {
//   return Future.delayed(Duration(seconds: 3), () {
//     return 'Coffee Boba';
//   });
// }

Future<String> getOrder() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = true;
    if (isStockAvailable) {
      return 'Coffee Boba sedang akan dibuat';
    } else {
      throw 'Our stock is not enough.';
    }
  });
}

Future<String> getService() {
  return Future.delayed(Duration(seconds: 3), () {
    var isStockAvailable = false;
    if (isStockAvailable) {
      return 'Coffee Boba Sudah Jadi';
    } else {
      throw 'Ternyata mesin error';
    }
  });
}

// void main() {
//   getOrder().then((value) {
//     print('You ordered: $value');
//   }).catchError((error) {
//     print('Sorry. $error');
//   }).whenComplete(() {
//     print('Thank you');
//   });
//   print('Getting your order...');
// }

//1.1 Sebelum menggunakan async await =============================================
// void main() {
//   print('Getting your order...');
//   var order = getOrder();
//   print('You order: $order');
// }

// 1.2 Menggunakan async await ===================================================
void main() async {
  print('Getting your order...');

  try {
    var order = await getOrder();
    print(order);
    var service = await getService();
    print(service);
  } catch (error) {
    print('Sorry Error : $error');
  } finally {
    print('finally : thanks you');
  }
}
