var ready;
ready = function() {

  // datepicker
  $('.datepicker').datetimepicker({
    format:"DD-MM-YYYY"
  });
  // timepicker
  $('.timepicker').datetimepicker({
    format: 'LT'
  });

};

$(document).ready(ready);
$(document).on('page:load', ready);
