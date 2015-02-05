class AddVoteCountToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :vote, :integer, default: 0
  end
end
