import '../component/club-list.js';
// komponen search bar
import '../component/search-bar.js';

import DataSource from '../data/data-source.js';

var main = () => {
  const searchElement = document.querySelector('search-bar');
  const clubListElement = document.querySelector('club-list');

const onButtonSearchClicked = async () => {
  console.log("Nilai Kota asal : " + searchElement.value_kota_asal)
  console.log("Nilai kota tujuan : " + searchElement.value_kota_tujuan)
  console.log("berat paket : " + searchElement.value_berat_paket)

  // try {
  //   const result = await DataSource.searchClub(searchElement.value);
  //   renderResult(result);
  //   console.log(result)
  // } catch (message) {
  //   fallbackResult(message);
  //   console.log(message)
  // }
};

  const renderResult = results => {
  clubListElement.clubs = results;
};

  const fallbackResult = message => {
  clubListElement.renderError(message);
};

  searchElement.clickEvent = onButtonSearchClicked;
};

export default main
