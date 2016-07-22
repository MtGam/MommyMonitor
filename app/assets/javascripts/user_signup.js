$(document).on('ready page:load', function(){
//  $('.role').accordion({collapsible: true, active: false});
  $('.role1').hide();
  $('.role2').hide();
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
