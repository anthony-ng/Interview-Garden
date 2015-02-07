$(document).ready(function() {

  ListenForQuestionVote()
  ListenForAnswerVote()
  ListenForQuestionForm()
  ListenForAnswerForm()

});

function ListenForQuestionVote() {
  $(".voting").on("click", function(event){
    event.preventDefault();
    alert("Inside ListenForQuestionVote function");

  })
};

console.log("Outside!")

function ListenForAnswerVote() {
  $(".answer_voting").on("click", function(event){
    // event.preventDefault();
    alert("Inside ListenForAnswerVote function");

  })
};

function ListenForQuestionForm() {
  $("#create_question").on("click", function(event){
    // event.preventDefault();
    alert("Inside ListenForQuestionForm function");
    console.log("Inside ListenForQuestionForm function");

  })
};

function ListenForAnswerForm() {
  $("#create_answer").on("submit", function(event){
    // event.preventDefault();
    alert("Inside ListenForAnswerForm function");
    console.log("Inside ListenForAnswerForm function");

  })
};