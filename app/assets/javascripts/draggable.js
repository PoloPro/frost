'use strict';

dragula([document.getElementById('todo-box'),
  document.getElementById('up-next-box'),
  document.getElementById('done-box')
]).on('drop', function (element, container) {
  $.post("/books/" + id, { _method: 'put', data: { status: container.id }});
})

