let imageFigureElement = document.querySelector('image-figure');
 
// Jika tidak tersedia pada DOM maka dibuat secara sintaksis.
if (!imageFigureElement) {
  imageFigureElement = document.createElement('image-figure');
  imageFigureElement.innerText = 'haha'
  document.body.appendChild(imageFigureElement);
}
 
// mengubah/manambahkan nilai attribute caption.
setTimeout(() => {
  imageFigureElement.setAttribute('caption', 'Gambar 1');
}, 3000);

setTimeout(() => {
  imageFigureElement.setAttribute('haji', 'haji');
}, 4000);
 
// menghapus imageFigureElement dari DOM
setTimeout(() => {
  imageFigureElement.remove();
}, 5000);