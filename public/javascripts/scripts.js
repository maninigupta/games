  function updateDisplay(data){
    $('.word-display').text(data.hiddenWord);
  }


// on window load
$(function(){
  console.log("manini rockzzzz :)")

  $('button.new-game').on('click', function(e){
    $.ajax({
      url: '/hangman/new', 
      method: 'POST',
      dataType: 'JSON',
      success: function(data){
        console.log(data);
      }
    });//end of ajax request
  }); //end of new-game event listener



});