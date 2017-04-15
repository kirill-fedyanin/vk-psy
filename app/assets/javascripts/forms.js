$(function(){
  $('#user-form').submit(function(event){
    event.preventDefault();
    var id = $('#user-id').val();
    $.get('/vk_api/users/' + id, function(data){
      console.log(data.content);
      $('#result').html(JSON.stringify(data.content, null, 2));
    });
  });
});
