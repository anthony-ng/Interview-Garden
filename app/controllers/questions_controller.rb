class QuestionsController < ApplicationController
  before_action :get_question, only:[:show, :edit, :update, :destroy, :upvote, :downvote]

  def get_question
    @question = Question.find(params[:id])
  end
#############################################
  def index
    @questions = Question.all
  end

  def show
      @empty = "Sorry, no answer yet!" if @question.answers.count == 0
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.create(question_params)

    redirect_to questions_path
  end

  def update
    @question.update(question_params)

    redirect_to :action => :show, :id => @question
  end

  def destroy
    @question.destroy

    redirect_to questions_path
  end

  def upvote
    @question.increment!(:vote)

    respond_to do |format|
      format.html
      format.js
      format.json {render json: @question}
    end

    redirect_to questions_path
  end

  def downvote
    @question.decrement!(:vote)

    redirect_to questions_path
  end
#############################################
  private

  def question_params
    params.require(:question).permit(:title, :content)
  end

end
