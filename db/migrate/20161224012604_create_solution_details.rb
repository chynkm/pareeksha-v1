class CreateSolutionDetails < ActiveRecord::Migration[5.0]
  def up
    create_table :solution_details do |t|
      t.integer :solution_id
      t.integer :parameter, limit: 2, default: 1
      t.text :value, null: false
      t.timestamps
    end
    add_index(:solution_details, :solution_id)
  end

  def down
    drop_table :solution_details
  end
end
