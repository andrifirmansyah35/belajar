// Function reguler -----------------------------------------------------------
const upperizedNames = ['Dimas', 'Widy', 'Buchori']
    .map(function (name) {
      return name.toUpperCase();
    });
 
console.log(...upperizedNames);

// code diatas dengan arrow function ------------------------------------------
const uppername = ['tri aung','happy ananda','ihsan nessa']
    .map(name => name.toUpperCase())

console.log(...uppername)

// Pada kasus fungsi yang dituliskan dalam satu baris dengan arrow function kita 
// dapat menghapus kata function, tanda kurung, tanda kurawal, kata return, 
// dan semicolon (;). Kita hanya perlu menambahkan tanda panah (=>) 
// di antara parameter dan kode fungsinya.