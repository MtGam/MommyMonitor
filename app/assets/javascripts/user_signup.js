$(document).on('ready page:load', function(){
  $('.role1').hide();
  $('.role2').hide();
});

$(document).ready(function(){
  $('#r1').hover(function(){
    $(this).css('background-color', '#cc9966');  //#e6e6ff
  }, function () {
    $(this).css('background-color', '#e6ffe6');
  });
});

$(document).ready(function(){
  $('#r2').hover(function(){
    $(this).css('background-color', '#cc9966');
  }, function () {
    $(this).css('background-color', '#ffffe6');
  });
});

  $(document).ready(function(){
    $("#r1").click(function(){
      $('#user_doc_qual').val('');
      $('#user_regis_number').val('');
      $('.role1').show();
      $('.role2').hide();

    });
    $("#r2").click(function(){
      $('#user_dob').val('');
      $('#user_children').val('');
      $('#trimester').val('');
      $('.role2').show();
      $('.role1').hide();
    });
});
