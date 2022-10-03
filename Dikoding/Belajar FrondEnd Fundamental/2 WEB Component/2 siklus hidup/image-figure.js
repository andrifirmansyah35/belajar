class ImageFigure extends HTMLElement {
  constructor(){
    super()
    console.log('Constructed!')
  }

  connectedCallback(){
    console.log('Connected!')
  }

  disconnectedCallback(){
    console.log('disconnected!')
  }

  adobtedCallback(){
    console.log('Adobted!')
  }

  attributeChangedCallback(name,oldValue,newvalue){
    console.log(`Attribute ${name} change`)
  }

  // Digunakan untuk mengamati perubahan nilai attribute caption
  // kita dapat menetapkan lebih dari satu attrbute yang diamati
  // dengan memisahan nama attribute dengan koma. Contoh : 

  // return ['caption','title','src']

  static get observedAttributes(){
    return ['caption','haji']
  }
}

customElements.define('image-figure',ImageFigure)