// ==============================================================================
// 1.1 Keyword this pada Arrow Function ==========================================
// ===============================================================================

// this merupakan komponen dari materi class

// 1.2 this pada function reguler ---------------------------------------
// mari kita lihat *keyword* (this) pada reguler function 
// hal tersebut akan membuat function menjadi object

function People(name, age, hobby) {
  this.name = name;
  this.age = age;
  this.hobby = hobby;
}
 
const programmer = new People('John', 18, ['Coding', 'Read book', 'Ping-pong']);
 
console.log(programmer.name);
console.log(programmer.age);
console.log(programmer.hobby);
 
/* Output:
John
18
['Coding', 'Read book', 'Ping-pong']
*/