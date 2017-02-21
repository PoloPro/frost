'use strict';

dragula([document.getElementById('todo-box'),
  document.getElementById('up-next-box'),
  document.getElementById('done-box')
]).on('drop', function (element) {
  var modal_id = element.id.concat("-modal")
  var modal_element = document.getElementById(modal_id);
  $(modal_element).modal('show');
})


