class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :question, index: true, foreign_key: true
      t.boolean :text

      t.timestamps null: false
    end
  end
end
