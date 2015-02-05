class QuestionsController < ApplicationController
  before_action :get_question, only:[:show, :edit, :update, :destroy, :upvote, :downvote]

  def get_question
    @question = Question.find(params[:id])
  end

  def index
    @questions = Question.all
  end

  def show
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
  end

  def update
    @question.update(question_params)

    redirect_to :action => :show, :id => @question
  end

  def destroy
    @question.destroy

    redirect_to :action => :index
  end

  def upvote
    # @question = Question.find(params[:id])
    @question.increment!(:vote_count)
  end

  def downvote
    # @question = Question.find(params[:id])
    @question.decrement!(:vote_count)
  end

  private

  def question_params
    params.require(:question).permit(:title, :content)
  end

end
