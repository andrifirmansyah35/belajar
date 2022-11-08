class SearchBar extends HTMLElement{
constructor() {
    super();
    this.shadowDOM = this.attachShadow({mode: 'open'});
  }

  connectedCallback(){
    this.render()
  }

  set clickEvent(event){
    this._clickEvent = event
    this.render()
  }

  get value_kota_asal() {
  return this.shadowDOM.querySelector('#kotaAsal').value;
  }

  get value_kota_tujuan() {
  return this.shadowDOM.querySelector('#kotaTujuan').value;
  }

  get value_berat_paket() {
  return this.shadowDOM.querySelector('#beratPaket').value;
  }

  render(){
    this.shadowDOM.innerHTML = `
    <style>
      .search-container {
        box-sizing: border-box;
        max-width: 800px;
        box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
        padding: 16px;
        border-radius: 5px;
        display: flex;
        position: sticky;
        top: 10px;
        background-color: white;
      }

      .search-container > input {
        box-sizing: border-box;
        width: 75%;
        padding: 16px;
        /* border: 0;  */
        border: 2 px solid lightblue;
        /* border-bottom: 1px solid cornflowerblue; */
        margin: 2px;
        font-weight: bold;
      }

      /* css input search */
      .search-container > input:focus {
        box-sizing: border-box;
        outline: 0;
        border : 2px solid cornflowerblue;
      }

      .search-container > input:focus::placeholder {
        font-weight: bold;
      }

      .search-container > input::placeholder {
        color: cornflowerblue;
        font-weight: normal;
      }

      /* css button search */

      .search-container > button {
        width: 23%;
        cursor: pointer;
        margin-left: auto;
        padding: 16px;
        background-color: cornflowerblue;
        color: white;
        border: 0;
        text-transform: uppercase;
      }

      @media screen and (max-width: 550px) {
        .search-container {
          flex-direction: column;
          position: static;
        }

        .search-container > input {
          width: 100%;
          /* margin-bottom: 12px; */
        }

        .search-container > button {
          width: 100%;
          }
      }
    </style>
    <div id="search-container" class="search-container">
      <input placeholder="Kota asal pengiriman" id="kotaAsal" required>
      <input placeholder="Kota Tujuan" id="kotaTujuan" required>
      <input placeholder="Berat(gram)" id="beratPaket" required>
      <button id="searchButtonElement" type="submit">Search</button>
    </div>
    `
    this.shadowDOM.querySelector('#searchButtonElement').addEventListener('click', this._clickEvent);
  }
  
}

customElements.define('search-bar', SearchBar);




// Dikarenakan elemen ini terdapat elemen <button> yang harus memiliki 
// sebuah event ketika ia ditekan, maka kita harus menyediakan setter.
// Gunanya adalah menetapkan fungsi event agar dapat mudah diterapkan 
// dari luar class SearchBar.