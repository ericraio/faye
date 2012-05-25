// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require autocomplete-rails
//= require twitter/bootstrap
//= require pjax
//= require_tree .
//

$(document).on('ajaxComplete ready', function() {
  $('.main-search-btn').hide();
  if(!$.support.placeholder) {
    var active = document.activeElement;
    $(':text').focus(function () {
      if ($(this).attr('placeholder') != '' && $(this).val() == $(this).attr('placeholder')) {
        $(this).val('').removeClass('hasPlaceholder');
      }
    }).blur(function () {
      if ($(this).attr('placeholder') != '' && ($(this).val() == '' || $(this).val() == $(this).attr('placeholder'))) {
        $(this).val($(this).attr('placeholder')).addClass('hasPlaceholder');
      }
    });
    $(':text').blur();
    $(active).focus();
    $('form').submit(function () {
      $(this).find('.hasPlaceholder').each(function() { $(this).val(''); });
    });
  }


  $('.password').focus(
    function(){
      var pass = $('<input type="password" size="30" placeholder="Password" name="user[password]" id="user_password">');
      $(this).replaceWith(pass);
      pass.focus();
    }
  );

  $('.password_confirmation').focus(
    function(){
      var pass = $('<input type="password" size="30" placeholder="Password Confirmation" name="user[password_confirmation]" id="user_password_confirmation" class="password">');
      $(this).replaceWith(pass);
      pass.focus();
    }
  );

  $('.main-search').keypress(function(e) {
    if(e.which === 13) {
      e.preventDefault();
      $(this).blur();
      $('.main-search-btn').focus().click();
    }
  });

  if ($('div.row-fluid > .alert').length > 0) {
    $('div.row-fluid > .alert').delay(10000).fadeOut();
  }
  $('.carousel').carousel();
  $('.item').first().addClass('active');
});
