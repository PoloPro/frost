'use strict';

dragula([document.getElementById('todo-box'),
  document.getElementById('up-next-box'),
  document.getElementById('done-box')
]).on('drop', function (element, container) {
  var db_id = element.getAttribute('db_id')
  $.post("/books/" + db_id, { _method: 'put', data: { status: container.id }});
})

