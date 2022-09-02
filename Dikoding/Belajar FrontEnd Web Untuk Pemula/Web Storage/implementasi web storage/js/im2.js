const storageKey = 'STORAGE_KEY';
const submitAction = document.getElementById('form-data-user');
let nilai = 1

function checkForStorage() {
  return typeof (Storage) !== 'undefined';
}

function putUserList(data){
  if(checkForStorage()){
    let userData = []
    if(localStorage.getItem(storageKey) !== null){
      userData = JSON.parse(localStorage.getItem(storageKey))
    }
  console.log('data sebelum ada penambahan')
    console.log(userData)

    userData.unshift(data)
    console.log('data setelah dimasukkan')
    console.log(userData)
    if(userData.length > 5){
      userData.pop()
    }

    localStorage.setItem(storageKey,JSON.stringify(userData))
  }
}

function getUserList(){
  if(checkForStorage()){
    return JSON.parse(localStorage.getItem(storageKey)) || []
  }else{
    return []
  }
}

function renderUserList() {
  const userData = getUserList();
  const userList = document.querySelector('#user-list-detail');
  userList.innerHTML = '';
  for (let user of userData) {
    let row = document.createElement('tr');
    row.innerHTML = '<td>' + user.nama + '</td>';
    row.innerHTML += '<td>' + user.umur + '</td>';
    row.innerHTML += '<td>' + user.domisili + '</td>';
    userList.appendChild(row);
  }
} 

submitAction.addEventListener('submit', function (event) {
  event.preventDefault()
  const inputNama = document.getElementById('nama').value;
  console.log('nama'+inputNama.value)
  const inputUmur = document.getElementById('umur').value;
  const inputDomisili = document.getElementById('domisili').value;
  const newUserData = {
    nama: inputNama,
    umur: inputUmur,
    domisili: inputDomisili,
  }
  putUserList(newUserData);
  renderUserList();
});

window.addEventListener('load', function () {
  if (checkForStorage) {
    if (localStorage.getItem(storageKey) !== null) {
      renderUserList();
    }
  } else {
    alert('Browser yang Anda gunakan tidak mendukung Web Storage');
  }
});