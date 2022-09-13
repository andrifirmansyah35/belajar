// const favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
 
// const [firstFood, secondFood, thirdFood, fourthFood] = favorites;
 
// console.log(firstFood);
// console.log(secondFood);
// console.log(thirdFood);
// console.log(fourthFood);
 
/* Output:
Seafood
Salad
Nugget
Soup
*/


// 2. destructuring Assigment------------------------------------------------
// const favorites = ['Seafood', 'Salad', 'Nugget', 'Soup'];
 
// let myFood = 'Ice Cream';
// let herFood = 'Noodles';
 
// [myFood, herFood] = favorites;
 
// console.log(myFood);
// console.log(herFood);

// 3. contoh kegunaan destructuring assigment 

// var a = 1;
// var b = 2;
// var temp;
 
// console.log('Sebelum swap');
// console.log('Nilai a: ' + a);
// console.log('Nilai b: ' + b);
 
// temp = a;
// a = b;
// b = temp;
 
// console.log('Setelah swap');
// console.log('Nilai a: ' + a);
// console.log('Nilai b: ' + b);
 
/* Output:
Sebelum swap
Nilai a: 1
Nilai b: 2
Setelah swap
Nilai a: 2
Nilai b: 1
*/

// 3.1 jika dengan menggunakan array destructon --------------------------------------------------
// let a = 1;
// let b= 2;
// let c= 3;
 
// console.log('Sebelum swap');
// console.log('Nilai a: ' + a);
// console.log('Nilai b: ' + b);
// console.log('Nilai c: ' + c);
 
// // [a, b] = [b, a]
// [a, b, c] = [c, b, a]
 
// console.log('Setelah swap');
// console.log('Nilai a: ' + a);
// console.log('Nilai b: ' + b);
// console.log('Nilai c: ' + c);
 
// /* output
// Sebelum swap
// Nilai a: 1
// Nilai b: 2
// Setelah swap
// Nilai a: 2
// Nilai b: 1
// */

// 4. destructuring array : default values ---------------------------------------------
const favorites = ['Seafood'];
 
const [myFood, herFood = 'Salad'] = favorites;
 
console.log(myFood);
console.log(herFood);