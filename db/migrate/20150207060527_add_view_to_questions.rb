class AddViewToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :view, :integer, default: 0
  end
end
