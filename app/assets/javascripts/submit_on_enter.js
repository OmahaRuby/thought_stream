$(function() {
  $(document).on('keydown', 'form [data-submit-on-enter]', function(event) {
    if(!event.shiftKey && event.keyCode === 13) {
      event.preventDefault();

      setTimeout(function() {
        $(this).parents('form:first').submit();
      }.bind(this), 0);
    }
  });
});