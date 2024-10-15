function getDayDifferenceSinceToday(dateString) {
  'use strict';
  const oneDay = 24 * 60 * 60 * 1000;
  var splittedDateString = dateString.split('-');
  const date = new Date(
    splittedDateString[0],
    --splittedDateString[1],
    ++splittedDateString[2]
  );
  const todayDate = new Date();
  return Math.round(Math.abs((todayDate - date) / oneDay));
}

const queryString = window.location.search;

if (queryString === '' || queryString.length < 10) {
  window.location = 'create.html';
}

var data = atob(queryString.substr(3));

var days = getDayDifferenceSinceToday(data.substr(0, 10));
document.getElementById('line_days').innerHTML = days;
document.getElementById('line_text').innerHTML = data.substr(10);
