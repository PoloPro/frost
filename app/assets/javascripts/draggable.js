'use strict';

dragula([document.getElementById('todo-box'),
  document.getElementById('up-next-box'),
  document.getElementById('done-box')
]).on('drop', function (element, container) {
  var db_id = element.getAttribute('db_id')
  var new_status = container.id.replace('-box','');
  $.post("/books/" + db_id + "/status", { _method: 'put', status: new_status });
})

