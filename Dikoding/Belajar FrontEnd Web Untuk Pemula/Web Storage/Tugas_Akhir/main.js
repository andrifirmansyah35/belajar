const STORAGE_BOOK_KEY = 'RAK_BUKU'
const EVENT_TAMPIL_BUKU = 'tampil_buku_event'
let arr_buku = []


function cekLocalStorage(){
  return typeof (Storage) !== "undefined"
}

document.addEventListener(EVENT_TAMPIL_BUKU,function(){
  const rakBuku_belumSelesaiBaca = document.getElementById('incompleteBookshelfList')
  const rakBuku_selesaiBaca = document.getElementById('completeBookshelfList')

  rakBuku_belumSelesaiBaca.innerHTML = ''
  rakBuku_selesaiBaca.innerHTML = ''

  let storageBuku = JSON.parse(localStorage.getItem(STORAGE_BOOK_KEY))

  for(let buku of storageBuku){
    // console.log(buku)
    let buku_element = buatBukuView(buku)

  if(buku.isComplete){
      rakBuku_selesaiBaca.append(buku_element)
      
    }else{
    rakBuku_belumSelesaiBaca.append(buku_element)
    }
  }
})

function buatBukuView(obj_buku){ 
    let c_element_article = document.createElement('article')
    let c_element_h3 = document.createElement('h3')
    let c_element_p1 = document.createElement('p')
    let c_element_p2 = document.createElement('p')
    let c_element_div = document.createElement('div')
    let c_elemet_button1 = document.createElement('button')
    let c_elemet_button2 = document.createElement('button')


    let judul = c_element_h3
    let penulis = c_element_p1
    let tahun = c_element_p2
    let buku = c_element_article
    buku.classList.add('book_item')
    let action = c_element_div
    action.classList.add('action')
    let button_red = c_elemet_button1
    button_red.classList.add('red')
    let button_green = c_elemet_button2
    button_green.classList.add('green')

    judul.innerText = obj_buku.title
    penulis.innerText = obj_buku.author
    tahun.innerText = obj_buku.year
 
    buku.append(judul,penulis,tahun)
    let id_buku = obj_buku.id

    if(obj_buku.isComplete){
      button_green.innerText = 'Belum selesai dibaca'
      button_red.innerText = 'Hapus buku'
      
      // event button
       button_red.addEventListener('click',function(){
        console.log('event hapus bucu selesai dibaca id : '+ id_buku)
        console.log('----------------')
        hapus_buku(id_buku)
      })

      button_green.addEventListener('click',function(){
        console.log('tandai belum selesai dibaca'+id_buku)
        console.log('------------------------------------')
        ubahStatusBuku(id_buku)
      })

      // Memasukkan button dan mengabungkan
      action.append(button_green,button_red)
      buku.append(action)
    }else{
      button_green.innerText = 'Selesai dibaca'
      button_red.innerText = 'Hapus buku'

      // membuat event
      button_red.addEventListener('click',function(){
        console.log('event hapus buku belum selesai dibaca id : '+ id_buku)
        console.log('----------------')
        hapus_buku(id_buku)
      })

       button_green.addEventListener('click',function(){
        console.log('tandai belum selesai dibaca'+id_buku)
        console.log('------------------------------------')
        ubahStatusBuku(id_buku)
      })

      // memasukan element button kedalam wadah
      action.append(button_green,button_red)
      buku.append(action)
    }
    // console.log(buku)
    return buku
}

function hapus_buku(id_buku_target){
  let data_buku = JSON.parse(localStorage.getItem(STORAGE_BOOK_KEY));
  const index_bukuTarget = findBukuIndex(data_buku,id_buku_target);
  console.log('function hapus buku') 
  console.log('data buku saat ini')
  console.log(data_buku)
  if (index_bukuTarget == -1) return;
  data_buku.splice(index_bukuTarget, 1);
  console.log('data buku setelah di hapus')
  console.log(data_buku)
  console.log('-------------------')
  saveData(data_buku);
  this.document.dispatchEvent(new Event(EVENT_TAMPIL_BUKU))
}

function findBukuIndex(data_buku,id_target){
  for(const index in data_buku){
    if(data_buku[index].id === id_target){
      return index
    }
  }
  return -1
}


function ubahStatusBuku(id_buku_target){
  let data_buku = JSON.parse(localStorage.getItem(STORAGE_BOOK_KEY));
  const index_bukuTarget = findBukuIndex(data_buku,id_buku_target);
  console.log('menjalankan fungsi ubah status buku')
  console.log('status buku: ')
  console.log(data_buku[index_bukuTarget].isComplete)

  if(data_buku[index_bukuTarget].isComplete == false){
    data_buku[index_bukuTarget].isComplete = true
  }else {
    data_buku[index_bukuTarget].isComplete = false
  }
  console.log('setelah status diubah')
  console.log(data_buku[index_bukuTarget].isComplete)
console.log('status buku:')
  console.log( data_buku[index_bukuTarget].isComplete)

  saveData(data_buku);
  this.document.dispatchEvent(new Event(EVENT_TAMPIL_BUKU))
}

function saveData(data_buku){
  if(cekLocalStorage){
    localStorage.setItem(STORAGE_BOOK_KEY,JSON.stringify(data_buku))
    // document.dispatchEvent(new Event(SAVED_EVENT))
  }
}



function addBook(){
  const idBuku = new Date().getTime()
  const judulBuku = document.getElementById('inputBookTitle').value
  const penulis = document.getElementById('inputBookAuthor').value
  const tahun = document.getElementById('inputBookYear').value
  const isComplete = document.getElementById('inputBookIsComplete').checked
 
 const objBukuBaru = objBuku(idBuku,judulBuku,penulis,tahun,isComplete)

  if(localStorage.getItem(STORAGE_BOOK_KEY) != ''){                   //1. cek data pada local storage
    arr_buku = JSON.parse(localStorage.getItem(STORAGE_BOOK_KEY))
  }

  arr_buku.unshift(objBukuBaru)                                       //2. memasukkan biku dalam data
  localStorage.setItem(STORAGE_BOOK_KEY,JSON.stringify(arr_buku))     //3. input ke storage
  // console.table(JSON.parse(localStorage.getItem(STORAGE_BOOK_KEY)))
  
  document.dispatchEvent(new Event(EVENT_TAMPIL_BUKU))

}

function objBuku(id,judul,penulis,thn,isCom){
    return {
    id: id,
    title: judul,
    author: penulis,
    year: thn,
    isComplete: isCom,
  }
}


window.addEventListener("load", function() {
  if(cekLocalStorage()){
    
    if(this.localStorage.getItem(STORAGE_BOOK_KEY) == null){
      localStorage.setItem(STORAGE_BOOK_KEY,'')
    }

    if(this.localStorage.getItem(STORAGE_BOOK_KEY) != ''){
      this.document.dispatchEvent(new Event(EVENT_TAMPIL_BUKU))
    }

    
  document.getElementById('inputBook').addEventListener('submit',function(event){
  event.preventDefault()
      addBook()
    })
  }else{
    alert('browser tidak mendukung storage')
  }
})