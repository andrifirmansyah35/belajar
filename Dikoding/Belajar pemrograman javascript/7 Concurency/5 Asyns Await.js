
// =====================================================================
// Sebelum menggunakan Async Await

const getCoffee = () => {
    return new Promise((resolve, reject) => {
        const seeds = 1;
        setTimeout(() => {
            if (seeds >= 10) {
                resolve("Kopi didapatkan!");
            } else {
                reject("Biji kopi habis!");
            }
        }, 1000);
    })
}

// function makeCoffee() {
//     getCoffee()
//     .then(coffee => {
//         console.log(coffee);
//     })
//     .catch(value => {
//       console.log(value)
//     })
// }
 
// makeCoffee();

// 2. Studi Kasus Async/Await ============================================================
// bagaimana jika kita akan menggunakan fungsi get Coffe seperti (code Syncronus) :
// function makeCoffee() {
//     const coffee = getCoffee();
//     console.log(coffee);
// }
 
// makeCoffee();
 
/* output
Promise { <pending> }
*/

// tentu kita tidak bisa karena kode diatas Syncronus, 
// sedangakan fungsi get cofe Asyncronus

// 3 =======================================================
// coffe menjadi asyncronus (await) maka fungsi yg menanganinya kita tambahkan (async) 
// untuk memberi tau js bahwa fungsi itu berjalan async
// await untuk menghentikan proses selanjutnya sampai variabel mendapatkan hasil dari promise
// async function makeCoffee() {
//     const coffee = await getCoffee();
//     console.log(coffee);
// }
 
// makeCoffee();
 
/* output
Kopi didapatkan!
*/

// 4 handle Reject ======================================================
// await hanya mengembalikan hasil dari promise berhasil  (onFulfilled).  bagaimana jika promise gagal  (onRejected)? 
// Caranya  Kembali lagi kepada prinsip synchronou dengan menangani sebuah eror  dengan menggunakan try...catch.
async function makeCoffee() {
    try {
        const coffee = await getCoffee();
        console.log(coffee);
    } catch (rejectedReason) {
        console.log(rejectedReason);
    }
}
 
makeCoffee();
 
/* output
Biji kopi habis!
*/