class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    if @question.answers.count == 0
      @empty = "Sorry, no one answers yet!"
    end
  end

  def new
    @question = Question.new
  end

  def delete
  end

  def edit
  end

end
