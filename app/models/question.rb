class Question < ActiveRecord::Base
  validates :title, :content, :vote, presence: true
  has_many :answers
  is_impressionable :counter_cache => true, :column_name => :view
  default_scope {
    order("created_at DESC")
  }
end
