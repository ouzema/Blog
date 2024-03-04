$(document).on('ajax:error', 'form', function(event) {
    var errors = event.detail[0];
    $.each(errors, function(key, value) {
      $('form').find('[name="' + key + '"]').after('<div class="error">' + value + '</div>');
    });
  });