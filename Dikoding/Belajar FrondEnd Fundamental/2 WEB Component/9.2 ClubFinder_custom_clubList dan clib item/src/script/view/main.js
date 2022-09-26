import '../component/club-list.js';
// komponen search bar
import '../component/search-bar.js';

import DataSource from '../data/data-source.js';

var main = () => {
  const searchElement = document.querySelector('search-bar');
  // const buttonSearchElement = document.querySelector('#searchButtonElement');
  // const clubListElement = document.querySelector('#clubList');
  const clubListElement = document.querySelector('club-cist');

const onButtonSearchClicked = async () => {
  try {
    const result = await DataSource.searchClub(searchElement.value);
    renderResult(result);
  } catch (message) {
    fallbackResult(message);
  }
};

  // var renderResult = (results) => {
  //   clubListElement.innerHTML = '';

  //   results.forEach((club) => {
  //     const {name, fanArt, description} = club;
  //     const clubElement = document.createElement('div');
  //     clubElement.setAttribute('class', 'club')

  //     clubElement.innerHTML = `
  //       <img class="fan-art-club" src="${fanArt}" alt="Fan Art">
  //       <div class="club-info">
  //         <h2>${name}</h2>
  //         <p>${description}</p>
  //       </div>
  //     `;

  //     clubListElement.appendChild(clubElement);
  //   });
  // };

  const renderResult = results => {
  clubListElement.clubs = results;
};

  // var fallbackResult = (message) => {
  //   clubListElement.innerHTML = ''  
  //   clubListElement.innerHTML += `<h2 class="placeholder">${message}</h2>`;
  // };

  const fallbackResult = message => {
  clubListElement.renderError(message);
};

  // buttonSearchElement.addEventListener('click', onButtonSearchClicked)
  searchElement.clickEvent = onButtonSearchClicked;
};

export {main}
