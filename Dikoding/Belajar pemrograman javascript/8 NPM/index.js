import _ from 'lodash';
 
const myArray = [1, 2, 3, 4];
let sum = 0;
 
for(let i = 0; i < myArray.length; i++) {
    sum += myArray[i];
}

console.log('sum 1 ----------------')
console.log(sum);

/* output
10
*/

// 1 ==================================
// Mengunakan fungsi reduce 
const myArray2 = [1, 2, 3, 4];
let sum2 = myArray.reduce((prev, curr) => {
    return prev + curr;
});

console.log('sum 2 -------------')
console.log(sum);