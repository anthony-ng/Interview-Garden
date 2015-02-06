class AnswersController < ApplicationController
  before_action :get_question

  def get_question
    @question = Question.find(params[:question_id])
  end
#########################################################

  def create
    @question.answers.create(answer_params)

    redirect_to question_path(@question)
  end

  def upvote
    @question.answers.increment!(:vote)

    redirect_to question
  end

  def downvote
    @question.answers.decrement!(:vote)

    redirect_to question
  end

##########################################################
  private

  def answer_params
    params.require(:answer).permit(:title, :content)
  end
end
