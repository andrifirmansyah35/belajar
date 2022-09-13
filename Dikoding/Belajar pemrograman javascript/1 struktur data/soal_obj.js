//  * 1. Buatlah variabel dengan nama restaurant yang bertipe object dengan ketentuan berikut:
//  *    - Memiliki properti bernama "name"
//  *       - Bertipe data string
//  *       - Bernilai apa pun, asalkan tidak string kosong atau null.
//  *    - Memiliki properti bernama "city"
//  *       - Bertipe data string
//  *       - Bernilai apa pun, asalkan tidak string kosong atau null.
//  *    - Memiliki properti "favorite drink"
//  *       - Bertipe data string
//  *       - Bernilai apa pun, asalkan tidak string kosong atau null.
//  *    - Memiliki properti "favorite food"
//  *       - Bertipe data string
//  *       - Bernilai apa pun, asalkan tidak string kosong atau null.
//  *    - Memiliki properti "isVegan"
//  *       - Bertipe data boolean
//  *       - Bernilai boolean apa pun.
//  *
//  * 2. Buatlah variabel bernama name.
//  *    Kemudian isi dengan nilai name dari properti object restaurant

//  * 3. Buatlah variabel bernama favoriteDrink.
//  *    Kemudian isi dengan nilai "favorite drink" dari properti object restaurant
//  *

let restaurant = {
  name : 'pakan iwak',
  city : 'bantul',
  'favorite drink' : 'jambu',
  'favorite food' : 'sego oyeng',
  isVegan : true
}

// 2.
let name = restaurant.name

// 3.
let favoriteDrink = restaurant['favorite drink']