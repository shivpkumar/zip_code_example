$(document).ready(function() {
  $('#zip-code-form').submit(function(e) {
    e.preventDefault();

    $.ajax({
      type: 'POST',
      url: '/check',
      data: $(this).serialize(),
      success: function() {
        $('#invalid').hide();
        $('#zip-code-form').hide();
        $('#order-form').show();
      },
      error: function() {
        $('#invalid').show();
      }
    });
  });
});
