$(document).ready(function() {
  $('.render-subject-form').click(function(){
    formURL = $(this).attr('data-url');
    $.ajax({
      url: formURL,
      type: 'GET',
      datatype: 'html',
      success: function(data, textStatus ){
        $('#subject-form-modal').html(data);
      },
      error: function(xhr, textStatus, errorThrown){
        console.log('request failed');
      }
    });
  });

  $('#subject-form-modal').on('click', '.btn-form-subject', function(){
    $form = $(this).parent().closest('form')
    formURL = $form.attr('action')+'/create';
    console.log(formURL);
    postData = $('#subject-form').serializeArray();
    $.ajax({
      url: formURL,
      type: 'POST',
      data: postData,
      datatype: 'json',
      success: function(data, textStatus ){
        console.log(data);
      },
      error: function(xhr, textStatus, errorThrown){
        console.log('request failed');
      }
    });
  });
});

