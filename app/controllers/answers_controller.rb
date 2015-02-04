class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:id])
    @answer = @question.new(answer_params)
    @answer.save
  end

  private

  def answer_params
    params.require(:answer).permit(:content)
  end
end
