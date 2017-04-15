$(function(){
  initUserForm();
  initMembersForm();
});

function initMembersForm(){
  $('#members-form').submit(function(event){
    event.preventDefault();
    var id = $('#group-id').val();
    $.get('/vk_api/members/?group_id=' + id, function(data){
      console.log(data.content);
      data.content.forEach(function(content){
        $('#result').append($('<div>'+JSON.stringify(content) +'</div>'));
      });
    });
  });
}

function initUserForm(){
 $('#user-form').submit(function(event){
    event.preventDefault();
    var id = $('#user-id').val();
    $.get('/vk_api/users/' + id, function(data){
      console.log(data.content);
      $('#result').html(JSON.stringify(data.content, null, 2));
    });
  });
}


