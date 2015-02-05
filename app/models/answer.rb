class Answer < ActiveRecord::Base
  validates :title, :content, :vote, presence: true
  belongs_to :question
end
