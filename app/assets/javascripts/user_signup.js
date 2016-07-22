$(document).on('ready page:load', function(){
//  $('.role').accordion({collapsible: true, active: false});
  $('.role1').hide();
  $('.role2').hide();
});
$(document).ready(function(){
    $("#r1").click(function(){
        $('.role1').show();
        $('.role2').hide();
    });
    $("#r2").click(function(){
        $('.role2').show();
        $('.role1').hide();
    });
});
