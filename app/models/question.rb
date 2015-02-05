class Question < ActiveRecord::Base
  validates :title, :content, :vote_count, presence: true
  has_many :answers
  default_scope {order("created_at DESC")}
end
