$(document).ready(function() {

  ListenForQuestionVote()
  // ListenForAnswerVote()
  // ListenForQuestionForm()
  // ListenForAnswerForm()

});

function ListenForQuestionVote() {
  $(".voting").on("click", function(event){
    event.preventDefault();
    console.log("Inside ListenForQuestionVote function");

  })
}

console.log("Outside!")

function ListenForAnswerVote() {
  $(".answer_voting").on("click", function(event){
    event.preventDefault();
    console.log("Inside ListenForAnswerVote function");

  })
}

function ListenForQuestionVote() {
  $(".voting").on("click", function(event){
    event.preventDefault();
    console.log("Inside ListenForQuestionVote function");

  })
}

function ListenForQuestionVote() {
  $(".voting").on("click", function(event){
    event.preventDefault();
    console.log("Inside ListenForQuestionVote function");

  })
}