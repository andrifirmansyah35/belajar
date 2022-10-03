class ImageFigure extends HTMLElement {
  constructor() {
    super();
    console.log('constructed!');
  }
 
  connectedCallback() {
    console.log('connected!');

    this.src = this.getAttribute('src') || null;
    this.alt = this.getAttribute('alt') || null;
    this.caption = this.getAttribute('caption') || null;
 
    this.innerHTML = `
      <figure>
        <p>Element tambahan</p>
        <img src="${this.src}" alt="${this.alt}">
        <figcaption>${this.caption}</figcaption>
      </figure>
    `;
  }
 
  disconnectedCallback() {
    console.log('disconnected!');
  }
 
  adoptedCallback() {
    console.log('adopted!');
  }

  attributeChangedCallback(name, oldValue, newValue) {
    console.log(`Attribute: ${name} changed!`);
  }
 
  // return ['caption', 'title', 'src', ...]
  static get observedAttributes() {
    return ['caption'];
  }
}
 
customElements.define('image-figure', ImageFigure);
// Implementasi lifecycle callback pada custom element bersifat opsional. 

// Catatan ==========================================================================
  // connectedCallback(): Akan terpanggil setiap kali elemen berhasil ditambahkan
  //  ke dokumen HTML (DOM). Callback ini merupakan tempat yang tepat untuk menjalankan
  //   konfigurasi awal seperti mendapatkan data, atau mengatur attribute.

    // disconnectedCallback(): Akan terpanggil setiap kali elemen dikeluarkan (remove()) dari DOM.
  // Callback ini merupakan tempat yang tepat untuk membersihkan data yang masih disimpan pada
  // elemen. Bisa itu event, state, ataupun objek. 

  // Akan terpanggil setiap kali elemen dipindahkan pada dokumen baru.
  //  Kita relatif jarang menggunakan callback ini, namun jika kita 
  //  memanfaatkan tag <iframe> maka callback ini akan terpanggil.

  // Akan terpanggil setiap kali nilai atribut yang di-observe melalui fungsi static get
  //  observedAttributes diubah. Callback ini bisa kita manfaatkan untuk memuat ulang data
  //   yang ditampilkan oleh elemen.

   //Attribue changedCallback digunakan untuk mengamati perubahan nilai attribute caption
  /* kita bisa menetapkan lebih dari satu atribut yang diamati.
     dengan memisahkan nama atribut menggunakan koma. Contoh: */