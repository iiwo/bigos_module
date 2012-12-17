$(document).ready(function(){

    $(".bigos-remote-form").live("ajax:success", function(event, data, status, xhr){
        $(this).parent().html(data);
    });

});