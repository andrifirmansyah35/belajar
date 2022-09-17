var main = () => {
  const searchElement = document.querySelector('#searchElement');
  const buttonSearchElement = document.querySelector('#searchButtonElement');
  const clubListElement = document.querySelector('#clubList');

  const onButtonSearchClicked = () => {
    const dataSource = new DataSource(renderResult, fallbackResult);
    dataSource.searchClub(searchElement.value);
  }

  var renderResult = (results) => {
    clubListElement.innerHTML = '';
    results.forEach((club) => {

      // 2. belum menggunakan destructuring ------------------------------------------------
      // const name = club.name;
      // const fanArt = club.fanArt;
      // const description = club.description;

      // 2.1 menggunakan destructuring --------------------------------------------------------
      const {name, fanArt, description} = club;

      const clubElement = document.createElement('div');
      clubElement.setAttribute('class', 'club');

      // 1. tidak menggunakan template literal ----------------------------------------------
      // clubElement.innerHTML = '<img class="fan-art-club" src="' + fanArt + '" alt="Fan Art">\n' +
      //     '<div class="club-info">\n' +
      //     '<h2>' + name + '</h2>\n' +
      //     '<p>' + description + '</p>' +
      //     '</div>';

      // 1. menggunakan teplate iteral
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
