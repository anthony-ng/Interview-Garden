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

  def create
    @question = Question.new(question_params)
    @question.save

    redirect_to :action => :index
  end

  def delete
  end

  def edit
  end

  private

  def question_params
    params.require(:question).permit(:title, :content)
  end

end
