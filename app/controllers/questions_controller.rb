class QuestionsController < ApplicationController

  # def get_question
  #   @question = Question.find(params[:id])
  # end

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

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    @question.update(question_params)

    redirect_to :action => :show, :id => @question
  end

  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    redirect_to :action => :index
  end

  def upvote
    @question = Question.find(params[:id])
    @question.increment!(:vote_count)
  end

  def downvote
    @question = Question.find(params[:id])
    @question.decrement!(:vote_count)
  end

  private

  def question_params
    params.require(:question).permit(:title, :content)
  end

end
