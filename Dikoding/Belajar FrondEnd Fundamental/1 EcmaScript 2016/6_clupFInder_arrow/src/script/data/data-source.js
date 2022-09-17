function DataSource(onSuccess, onFailed) {
  this.onSuccess = onSuccess;
  this.onFailed = onFailed;
}

DataSource.prototype.searchClub = function (keyword) {
  // // 5 menggunakan arrow function ===================================================
  // const filteredClubs = clubs.filter(function (club) {
  //   return club.name.toUpperCase().includes(keyword.toUpperCase());
  // });

  // 5.1 Function arrow ===============================================================
  const filteredClubs = clubs.filter(club => club.name.toUpperCase().includes(keyword.toUpperCase()));

  if (filteredClubs.length) {
    this.onSuccess(filteredClubs);
  } else {
    clubListElement.innerHTML += `<h2 class="placeholder">${message}</h2>`;
  }

};