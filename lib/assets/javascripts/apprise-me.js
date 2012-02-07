//= require apprise-min

(function( $ ) {
  $.fn.appriseConfirm = function(options) {
    if (options == undefined)
      options = {}
    defaultAppriseOptions = options;

    this.click(function(event) {
      $linkToVerify = $(this)

      var appriseOptions = defaultAppriseOptions
      $.each($linkToVerify.data(), function(key, val){
        if ($.inArray(key, ['confirm', 'verify', 'textNo', 'textYes', 'textCancel', 'textOk', 'animate']) >= 0) {
          appriseOptions[key] = val
          if (key == 'verify') {
            appriseOptions['confirm'] = false
          }
        }
      })

      if (appriseOptions['confirm'] == undefined && appriseOptions['verify'] == undefined) {
        appriseOptions['confirm'] = true
      }

      message = $linkToVerify.attr('data-apprise-confirm')
      apprise(message, appriseOptions, function(r){
        if (r) { $.rails.handleMethod($linkToVerify) }
      })

      event.preventDefault();
      return false;
    });
    return this;
  }
})( jQuery );
