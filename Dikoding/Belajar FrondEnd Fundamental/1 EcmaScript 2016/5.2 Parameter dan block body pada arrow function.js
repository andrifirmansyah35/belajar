// Function Parameter ----------------------------------------------------
// Pada penggunaan arrow function dengan variabel yang diletakan 
// sebelum tanda panah (=>) adalah parameter. 

// name merupakan parameter dari fungsi
// const sayName = name => console.log(`Nama saya ${name}`);

// 1.1 2 parameter arroew =---------------------------------------------------
// jika terdapat lebih dari satu parameter kita gunakan tanda kurung
const sayHello = (name, greet) => console.log(`${greet}, ${name}!`);
 
sayHello('Dimas', 'Selamat Pagi');

// 1.2 parameter kosonh ---------------------------------------------------
const sayHello2 = () => console.log('Selamat pagi semuanya!');
 
sayHello2();
 
/* Output:
Selamat pagi semuanya!
*/

// ====================================================================

// BLOCK BODY fUNCTION ================================================
  
// Fungsi merupakan mini program sehingga sangat mungkin terdapat lebih dari satu logika di dalamnya.
// Seperti yang kita ketahui bahwa logika-logika pada pemrograman terdiri dari banyak expression ataupun statement. 

// Pada contoh kode arrow function sebelumnya kita hanya menuliskan satu buah expression
// sehingga penulisannya bisa sangat ringkas. Namun bagaimana jika dalam sebuah fungsi terdapat
// banyak logika di dalamnya? Apakah bisa dituliskan menggunakan arrow function? Jawabannya tentu bisa!

// Sama seperti regular function, arrow function sebenarnya tidak benar-benar menghilangkan tanda kurung
// kurawal ({ }) dalam penulisannya. Tanda kurung kurawal pun berfungsi sama seperti regular function 
// yakni menampung body function di mana tempat logika fungsi dituliskan. Penulisan tanda kurung 
// kurawal menjadi opsional ketika body fungsi hanya terdiri dari satu expression atau statement saja.

// Jika kita butuh lebih dari satu baris dalam body function, kita bisa menuliskannya seperti ini:

const sayHello3 = language => {
  if (language.toUpperCase() === 'INDONESIA') {
    return 'Selamat Pagi!';
  } else {
    return 'Good Morning!';
  }
}
 
console.log(sayHello3('Indonesia'));
 
/* Output:
Selamat Pagi!
*/