class ImageFigure extends HTMLElement {
  connectedCallback() {
    this.src = this.getAttribute('src') || null;
    this.alt = this.getAttribute('alt') || null;
    this.caption = this.getAttribute('caption') || null;
    this.render();
  }
 
  render() {
    this.innerHTML = `
      <figure>
        <img src="${this.src}" alt="${this.alt}">
        <figcaption>${this.caption}</figcaption>
      </figure>
    `;
  }
 
  attributeChangedCallback(name, oldValue, newValue) {
    console.log("this[name] : "+this[name])
    this[name] = newValue;
    console.log("New Value : "+newValue)
    this.render();
  }
 
  static get observedAttributes() {
    return ['caption'];
    // return ['caption', 'src', 'alt']; //jika ingin lebih dari satu
  }
}
 
customElements.define('image-figure', ImageFigure);