
$ ->
  # 'after sending votation' behavior
  $('.votacion .votoUsuario form')
    .bind('ajax:success', (evt, data, status, xhr) ->
#      $(evt.target).find('.votoBotones button').each ( (index, item) ->
#        if ($( this ).val() == data.voto)
#          $( this ).attr('disabled','disabled');
#        else 
#          $( this ).remove();
#      ) 
      location.reload();
    )
    .bind('ajax:error', (evt, data, status, xhr) ->
      alert("Lo sentimos, pero ha ocurrido un error al guardar tu voto.\nPor favor, recarga la página, y prueba de nuevo");
    );
