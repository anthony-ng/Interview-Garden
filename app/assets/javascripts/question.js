$(document).ready(function() {

  ListenForQuestionVote()
  // ListenForAnswerVote()

  // ListenForQuestionForm()
  // ListenForAnswerForm()

});

function ListenForQuestionVote() {
  $("#questions_container").on(".link_to", function(event){
    console.log("Inside ListenForQuestionVote function");
    // event.preventDefault();

  })
}

console.log("Outside!")