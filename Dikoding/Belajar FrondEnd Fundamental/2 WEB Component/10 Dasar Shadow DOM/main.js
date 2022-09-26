// Shadow Host 
const divElement = document.createElement('div')

// Element yang berada dalam shadow DOM 
const headingElement = document.createElement('h1')
headingElement.innerText = 'Ini merupakan konten didalam SHADOW DOM'

// melampirkan shadow root ke pada shadow Host 
// mengatur mode shadow dengan nilai open 
const shadowRoot = divElement.attachShadow({mode:'open'})

// Memasukkan shadow heading kedalam shadow root 
shadowRoot.appendChild(headingElement)

// Memasukkan elemen shadow host ke regular DOM
document.body.appendChild(divElement);

// shadowRoot.innerHTML += `
//   <style>
//     h1 {
//       color: green;
//     }
//   </style>
// `;