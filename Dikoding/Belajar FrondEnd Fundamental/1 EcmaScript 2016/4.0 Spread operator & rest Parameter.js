// 1. 0 Spread operator : digunakan untuk membentangkan array ----------------------------------
const favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
 
console.log(favorites);

/* Output:
[ 'Seafood', 'Salad', 'Nugget', 'Soup' ]
*/

// Pada kode di atas, hasil yang dicetak adalah sebuah array (ditunjukkan dengan tanda [ ]) 
// karena memang kita mencetak nilai favorites itu sendiri. Nah, dengan menggunakan spread
//  operator kita dapat membentangkan nilai-nilai dalam array tersebut.

const favorites1 = ['Seafood', 'Salad', 'Nugget', 'Soup'];
 
console.log(...favorites1);
 
/* Output:
Seafood Salad Nugget Soup
*/

// Sama seperti kita menuliskan kode seperti ini:

console.log(favorites1[0], favorites1[1], favorites1[2], favorites1[3]);

// Spread operator ini cocok sekali digunakan sebagai nilai parameter pada -----------------------------

// variadic functions, seperti console.log() atau Math.max().
/* Math.max() -> Mencari nilai terbesar */
const numbers = [12, 32, 90, 12, 32];
 
// Sama seperti kita menuliskan
// console.log(Math.max(numbers[0], numbers[1], numbers[2], numbers[3]);
 
console.log(Math.max(...numbers));
/* Output:
90
*/

// -----------------------------------------------------------------------------------------------------
// Spread operator dapat digunakan untuk menggabungkan dua buah array
//  dalam objek array baru. Jika tidak menggunakan spread operator ini
//   maka hasilnya seperti ini:
const favoritez = ['Seafood', 'Salad', 'Nugget', 'Soup'];
const others = ['Cake', 'Pie', 'Donut'];
 
const allFavorites = [favoritez, others];
 
console.log(allFavorites);

/* output:
[["Seafood", "Salad", "Nugget", "Soup"], ["Cake", "Pie", "Donut"]]
*/

// -----------------------------------------------------------------------------------------------------
// Sayang sekali, nilai array tidak akan tergabung. Alih-alih menggabungkan nilainya,
//  variabel allFavorite menjadi objek array baru yang menampung dua array di dalamnya.
//   Nah lantas bagaimana jika kita mencoba menggunakan spread operator?

const favorites2 = ['Seafood', 'Salad', 'Nugget', 'Soup'];
const others2 = ['Cake', 'Pie', 'Donut'];
 
const allFavorites2 = [...favorites2, ...others2];
 
console.log(allFavorites2);
 
/* Output:
["Seafood", "Salad", "Nugget", "Soup", "Cake", "Pie", "Donut"]
*/




// 2.0  REST PARAMETER =============================================================================
// Sebelumnya kita sudah tahu bahwa variadic function dapat menerima banyak parameter, 
// namun apakah kita tahu bagaimana caranya agar function dapat menerima parameter?
// Jika spread operator adalah pelebur array menjadi beberapa elemen yang berbeda,
// rest parameter ini adalah kebalikan dari operator tersebut. Penasaran?

// Rest parameter juga dituliskan menggunakan three consecutive dots (...). Dengan rest parameter,
//  kita dapat menggabungkan beberapa elemen menjadi satu array. Tentu teknik ini sangat bermanfaat
//   ketika kita hendak membuat sebuah variadic function.

// Sebagai contoh penggunaanya, mari kita buat sebuah variadic function yang berfungsi untuk menjumlahkan 
// seluruh nilai argument fungsi yang diberikan.

function sum(...numbers) {
  var result = 0;
  for (let number of numbers) {
    result += number;
  }
  return result;
}

console.log(sum(1, 2, 3, 4, 5));

/* Output:
15
*/