$(document).ready(function() {

  ListenForQuestionVote()
  ListenForAnswerVote()
  ListenForQuestionForm()
  ListenForAnswerForm()

});

function ListenForQuestionVote() {
  $(".voting").on("click", function(event){
    event.preventDefault();
    console.log("Quack")
    var $clicked = $(this)
    $.ajax({
      url: this.action,
      type: this.method
    }).success(function(response){
      console.log("AJAX Question Vote");
      // console.log(response);
      $clicked.siblings('.q_votes').html(response.vote);
      // $clicked.siblings('.q_votes').css( "background-color", "red" );
    }).fail(function(response){
      console.log("Nope!")
    });
  });
};

function ListenForAnswerVote() {
  $(".answer_voting").on("click", function(event){
    event.preventDefault();
    var $clicked = $(this)
    $.ajax({
      url: this.action,
      type: this.method
    }).success(function(response){
      console.log("AJAX Answer Vote");
      $clicked.siblings('.a_votes').html(response.vote);
      // $clicked.siblings('.a_votes').css( "background-color", "red" );
    }).fail(function(response){
      console.log("Nope!")
    });
  });
};

function ListenForQuestionForm() {
  $("#create_question").on("click", function(event){
    // event.preventDefault();
    // alert("Inside ListenForQuestionForm function");
    console.log("Inside ListenForQuestionForm function");

  })
};

function ListenForAnswerForm() {
  $("#create_answer").on("submit", function(event){
    // event.preventDefault();
    // alert("Inside ListenForAnswerForm function");
    console.log("Inside ListenForAnswerForm function");

  })
};