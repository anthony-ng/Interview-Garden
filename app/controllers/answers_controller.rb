class AnswersController < ApplicationController
  before_action :get_question
  before_action :get_answer, only:[:upvote, :downvote]

  def get_question
    @question = Question.find(params[:question_id])
  end

  def get_answer
    @answer = @question.answers.find(params[:id])
  end
#########################################################
  def create
    @question.answers.create(answer_params)

    redirect_to question_path(@question)
  end

  def upvote
    @answer.increment!(:vote)

    redirect_to question_path(@question)
  end

  def downvote
    @answer.decrement!(:vote)

    redirect_to question_path(@question)
  end
##########################################################
  private

  def answer_params
    params.require(:answer).permit(:title, :content)
  end
end
