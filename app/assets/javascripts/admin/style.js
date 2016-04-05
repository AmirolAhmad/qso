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

  // Tooltip
  (function( $ ) {
  	'use strict';
  	if ( $.isFunction( $.fn['tooltip'] ) ) {
  		$( '[data-toggle=tooltip],[rel=tooltip]' ).tooltip({ container: 'body' });
  	}
  }).apply( this, [ jQuery ]);

};

$(document).ready(ready);
$(document).on('page:load', ready);
