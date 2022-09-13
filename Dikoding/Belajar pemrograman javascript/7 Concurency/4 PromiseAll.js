// Promise All
// Pada materi sebelumnya kita belajar bagaimana promise dapat menangani situasi 
// di mana terdapat asynchronous process yang saling membutuhkan untuk melaksanakan
// tugasnya. Lalu bagaimana jika kita ingin menjalankan banyak promise sekaligus tanpa 
// memedulikan urutan? Bukankah concurrency memungkinkan kita melakukan banyak proses bersamaan agar lebih efisien?

// Ketika pergi ke sebuah kedai kopi bersama rekan kerja, kita biasanya memesan kopi secara
// bersamaan. Meskipun kopi yang kita pesan berbeda, tak jarang pelayanan mengantarkan pesanan
//  bersamaan. Nah, pada kasus inilah pelayan menggunakan teknik Promise.all().


// Contoh 1 ===============================================================================
// const promises = [firstPromise(), secondPromise(), thirdPromise()];
 
// Promise.all(promises)
//     .then(resolvedValue => {
//         console.log(resolvedValue);
//     });
 
/* output
[ 'first promise', 'second promise', 'third promise' ]
*/



// 2 =====================================================================================

const state = {
    stock: {
        coffeeBeans: 250,
        water: 1000,
    },
    isCoffeeMachineBusy: false,
}
 
const checkAvailability = () => {
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            if (!state.isCoffeeMachineBusy) {
                resolve("Mesin kopi siap digunakan.");
            } else {
                reject("Maaf, mesin sedang sibuk.");
            }
        }, 1000);
    });
};
 
const checkStock = () => {
    return new Promise((resolve, reject) => {
        state.isCoffeeMachineBusy = true;
        setTimeout(() => {
            if (state.stock.coffeeBeans >= 16 && state.stock.water >= 250) {
                resolve("Stok cukup. Bisa membuat kopi.");
            } else {
                reject("Stok tidak cukup!");
            }
        }, 1500);
    });
};
 
const brewCoffee = () => {
    console.log("Membuatkan kopi Anda...")
    return new Promise((resolve, reject) => {
        setTimeout(() => {
            resolve("Kopi sudah siap!")
        }, 2000);
    });
};


const boilWater = () => {
    return new Promise((resolve, reject) => {
        console.log("Memanaskan air...");
        setTimeout(() => {
            resolve("Air panas sudah siap! : promise all");
        }, 2000);
    })
}
 
const grindCoffeeBeans = () => {
    return new Promise((resolve, reject) => {
        console.log("Menggiling biji kopi...");
        setTimeout(() => {
            resolve("Kopi sudah siap! : promise all");
        }, 1000);
    })
}

function makeEspresso() {
    checkAvailability()
        .then((value) => {
            console.log(value);
            return checkStock();
        })
        .then(value => {
            console.log(value);
            const promises = [grindCoffeeBeans(),boilWater()];
            return Promise.all(promises);
        })
        .then((value) => {
            // console.log(value)
             console.log(`PA-1 :  ${value[0]}`);
            console.log(`PA-2 :  ${value[1]}`);
            return brewCoffee();
        })
        .then(value => {
            console.log(value);
            state.isCoffeeMachineBusy = false;
        })
        .catch(rejectedReason => {
            console.log(rejectedReason);
            state.isCoffeeMachineBusy = false;
        });
}
 
makeEspresso();
 
/* output
Mesin kopi siap digunakan.
Stok cukup. Bisa membuat kopi.
Memanaskan air...
Menggiling biji kopi...
[ 'Air panas sudah siap!', 'Kopi sudah siap!' ]
Membuatkan kopi Anda...
Kopi sudah siap!
*/