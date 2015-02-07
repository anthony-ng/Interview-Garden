$(document).ready(function() {

  ListenForQuestionVote()
  ListenForAnswerVote()
  ListenForQuestionForm()
  ListenForAnswerForm()

});

function ListenForQuestionVote() {
  $(".voting").on("click", function(event){
    event.preventDefault();
    var $clicked = $(this)
    $.ajax({
      url: this.action,
      type: this.method
    }).success(function(response){
      console.log("AJAX Question Vote");
      console.log(response)
      $clicked.siblings('.vote').html(response.vote);
    }).fail(function(response){
      console.log("Nope!")
    });
  });
};

console.log("Outside!")

function ListenForAnswerVote() {
  $(".answer_voting").on("click", function(event){
    event.preventDefault();
    var $clicked = $(this)
    $.ajax({
      url: this.action,
      type: this.method
    }).success(function(response){
      console.log("AJAX Answer Vote");
      $clicked.siblings('.vote').html(response.vote);
    }).fail(function(response){
      console.log("Nope!")
    });
  });
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