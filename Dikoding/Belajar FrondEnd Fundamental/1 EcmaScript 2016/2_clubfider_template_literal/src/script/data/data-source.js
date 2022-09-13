function DataSource(onSuccess, onFailed) {
  this.onSuccess = onSuccess;
  this.onFailed = onFailed;
}

DataSource.prototype.searchClub = function (keyword) {
  const filteredClubs = clubs.filter(function (club) {
    return club.name.toUpperCase().includes(keyword.toUpperCase());
  });

  if (filteredClubs.length) {
    this.onSuccess(filteredClubs);
  } else {
    // 1. tidak menggunakan template literal ---------------------------
    // this.onFailed(keyword + ' is not found');

    // 1. menggunakan template literal --------------------------------
    clubListElement.innerHTML += `<h2 class="placeholder">${message}</h2>`;
  }
};