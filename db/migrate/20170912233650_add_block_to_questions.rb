class AddBlockToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :block, index: true, foreign_key: true
  end
end
