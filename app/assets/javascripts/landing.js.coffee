# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('#new_pre input[type="submit"]').on('click', (e) ->
    form = $('form#new_pre');
    e.preventDefault();
    
    options = 
      type: 'POST'
      url: form.attr('action')
      data: form.serialize()
      dataType: 'json'
      success: (data, textStatus, jqXHR) ->
        $('#successModal').modal('show');
        true;   
      error: ( jqXHR, textStatus, errorThrown ) ->
        true;      
    $.ajax(options);
  );
