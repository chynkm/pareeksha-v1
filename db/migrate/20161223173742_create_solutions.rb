class CreateSolutions < ActiveRecord::Migration[5.0]
  def up
    create_table :solutions do |t|
      t.integer :question_id
      t.integer :complexity, limit: 2
      t.text :result, null: false
      t.timestamps
    end
    add_index(:solutions, :question_id)
  end

  def down
    drop_table :solutions
  end
end
