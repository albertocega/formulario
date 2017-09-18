class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :text
      t.integer :no_value
      t.integer :yes_value

      t.timestamps null: false
    end
  end
end
