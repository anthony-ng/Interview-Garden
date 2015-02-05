class Question < ActiveRecord::Base
  has_many :answers

  scope :get_question, @question = Question.find(params[:id])
end
