// const coffeeStock = require('./state');
 
// // console.log(coffeeStock);

// const makeCoffee = (type, miligrams) => {
//     if (coffeeStock[type] >= miligrams) {
//         console.log("Kopi berhasil dibuat!");
//     } else {
//         console.log("Biji kopi habis!");
//     }
// }
 
// makeCoffee("robusta", 80);



// // 2 (Mengimpoert 2 export)=============================================
// const {coffeeStock, isCoffeeMachineReady} = require('./state');
 
// console.log(coffeeStock);
// console.log(isCoffeeMachineReady);

// 3. latihan ---------------------------------------------------------------
// import coffeeStock from './state.js';
 
// const displayStock = stock => {
//     for (const type in stock) {
//         console.log(type);
//     }
// }
 
// displayStock(coffeeStock);


// 4 =====================================================================
// import { coffeeStock, isCoffeeMachineReady } from './state.js';
// 5 cara lain meng import dengan nama lain =============================
import { coffeeStock as stock, isCoffeeMachineReady } from './state.js';

 
console.log(coffeeStock);
console.log(isCoffeeMachineReady);