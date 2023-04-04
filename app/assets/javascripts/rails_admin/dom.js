(function($) {
    $(document).ready(function() {
      $(document).trigger('rails_admin.dom_ready');
    });

    $(document).on('rails_admin.dom_ready', function() {
      $('#history').history();
    });

}(jQuery));
