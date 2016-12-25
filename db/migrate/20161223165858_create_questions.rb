class CreateQuestions < ActiveRecord::Migration[5.0]
  def up
    create_table :questions do |t|
      t.text :question, limit: 4294967295, null: false
      t.integer :duration, comment: 'in seconds'
      t.integer :difficulty, limit: 2
      t.timestamps
    end
  end

  def down
    drop_table :questions
  end
end
