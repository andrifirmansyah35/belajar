// const profile = {
//   firstName: 'John',
//   lastName: 'Doe',
//   age: 18,
// };
 
// const {firstName, lastName, age} = profile;
 
// console.log(firstName, lastName, age);

// 2. destructuring assigment ----------------------------------------
// const profile = {
//   firstName: 'John',
//   lastName: 'Doe',
//   age: 18,
// };
 
// let firstName = 'Dimas';
// let age = 20;
 
// // menginisialisasi nilai baru melalui object destruction
// ({firstName, age} = profile);
 
// console.log(firstName);
// console.log(age);


// 3. destructuering dengan menggunakan default value ----------------------
// const profile = {
//   firstName: 'John',
//   lastName: 'Doe',
//   age: 18,
// };
 
// const {firstName, age, isMale = false} = profile;
 
// console.log(firstName);
// console.log(age);
// console.log(isMale);


// 4. Assigning to Different Local Variable Names
const profile = {
  firstName: 'John',
  lastName: 'Doe',
  age: 18,
};
 
const {firstName: localFirstName, lastName: localLastName, age: localAge} = profile;
 
console.log(localFirstName);
console.log(localLastName);
console.log(localAge);