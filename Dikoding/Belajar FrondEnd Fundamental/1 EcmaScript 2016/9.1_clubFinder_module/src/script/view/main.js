import DataSource from '../data/data-source.js';

var main = () => {
  const searchElement = document.querySelector('#searchElement');
  const buttonSearchElement = document.querySelector('#searchButtonElement');
  const clubListElement = document.querySelector('#clubList');

  // const onButtonSearchClicked = () => {
  //   const dataSource = new DataSource(renderResult, fallbackResult);
  //   dataSource.searchClub(searchElement.value);
  // }

  // 3. menjadi callback promise ------------------------------------
//   const onButtonSearchClicked = () => {
//   DataSource.searchClub(searchElement.value)
//       .then(renderResult)
//       .catch(fallbackResult);
// };

// 4. menggunakan async await  ---------------------------------------
const onButtonSearchClicked = async () => {
  try {
    const result = await DataSource.searchClub(searchElement.value);
    renderResult(result);
  } catch (message) {
    fallbackResult(message);
  }
};

  var renderResult = (results) => {
    clubListElement.innerHTML = '';
    results.forEach((club) => {

      const {name, fanArt, description} = club;

      const clubElement = document.createElement('div');
      clubElement.setAttribute('class', 'club');
      clubElement.innerHTML =
      '<img class="fan-art-club" src="' + fanArt + '" alt="Fan Art">\n' +
      '<div class="club-info">\n' +
      '<h2>' + name + '</h2>\n' +
      '<p>' + description + '</p>' +
      '</div>';


      clubListElement.appendChild(clubElement);
    });
  };

  var fallbackResult = (message) => {
    clubListElement.innerHTML = ''  
    // 1. tidak menggunakan template literal ------------------------------------
    // clubListElement.innerHTML += '<h2 class="placeholder">' + message + '</h2>'
    // 1. menggunakan template literal ------------------------------------------
    clubListElement.innerHTML += `<h2 class="placeholder">${message}</h2>`;
  };

  buttonSearchElement.addEventListener('click', onButtonSearchClicked)
};


export default main;