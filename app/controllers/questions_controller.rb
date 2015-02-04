class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
    @questions = Question.all
  end
end
