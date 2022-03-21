var popoverTriggerList = [].slice.call(document.querySelectorAll('[data-bs-toggle="popover"]'))
var popoverList = popoverTriggerList.map(function (popoverTriggerEl) {
  return new bootstrap.Popover(popoverTriggerEl)
})

var w = window.innerWidth;

if(w < 1062) {
  const table = document.getElementById('rank-table');

  let j = 0;
  while(j < 3) {
    for(let i = 0; i < table.rows.length; i++)  {
      table.rows[i].deleteCell(-1);
    }
    j++;
  }
}