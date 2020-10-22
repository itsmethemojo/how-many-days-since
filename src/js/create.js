var isActualDate = function(dateString) {
  'use strict';
  var splittedDateString = dateString.split('-');
  var tempDate = new Date(
    splittedDateString[0],
    --splittedDateString[1],
    splittedDateString[2]
  );
  return splittedDateString[1] === tempDate.getMonth();
};

function create() {
  'use strict';
  var hmdsDate = document.getElementById('hmds_date').value;
  var hmdsText = document.getElementById('hmds_text').value;

  if (isActualDate(hmdsDate) === false || hmdsText === '') {
    window.alert('please fill out all fields');
    return;
  }

  var hmdsUrl = 'index.html?s=' + btoa(hmdsDate + hmdsText);
  location.href = hmdsUrl;
}

document.getElementById('hmds_create').addEventListener('click', create);
