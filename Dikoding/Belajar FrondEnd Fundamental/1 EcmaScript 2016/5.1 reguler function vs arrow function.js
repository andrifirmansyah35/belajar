// Regular Function versus Arrow Function=====================================================
// Sekilas kita sudah tahu seperti apa arrow function, namun mungkin bila kita sama sekali 
// belum pernah mencobanya kita akan dibuat bingung. Pasalnya, penulisannya dibandingkan 
// reguler function jauh berbeda. 

// Selain perbedaan dari segi sintaksis, terdapat juga perbedaan perilaku antara keduanya.
// Regular function dapat berupa function declaration atau function expression,
// namun arrow function hanya berupa function expression saja. Itu sebabnya 
// arrow function memiliki nama lengkap “arrow function expressions”.

// 1.1 reguler function dan arrow ------------------------------------------------------------

// a. function declaration
// function sayHello(greet) {
//   console.log(`${greet}!`);
// }

// // function expression
// const sayName = function (name) {
//   console.log(`Nama saya ${name}`);
// };

// b. arrow function ------------------------------------------------------------------------
// function expression
const sayHello = greet => console.log(`${greet}!`);
const sayName = name => console.log(`Nama saya ${name}`);

// Karena arrow function merupakan sebuah expression, maka ia hanya dapat
// digunakan untuk disimpan pada variabel (seperti contoh kode di atas), 
// sebagai argumen pada sebuah fungsi, dan sebagai nilai dari properti objek.

// a . Stored in variabel 
const sayNamee = name => console.log(`Nama saya ${name}`);

// b. Passed as an argument 
['Dimas', 'Widy', 'Buchori'].forEach(name => console.log(`Nama saya ${name}`));

// c. stored in object 
const user = {
  introduce: name => console.log(`Nama saya ${name}`),
}