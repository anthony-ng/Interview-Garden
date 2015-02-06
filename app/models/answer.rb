class Answer < ActiveRecord::Base
  validates :title, :content, :vote, presence: true
  belongs_to :question
  default_scope {
    order("created_at ASC")
  }
end
