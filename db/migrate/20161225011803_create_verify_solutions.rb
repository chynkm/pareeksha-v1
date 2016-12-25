class CreateVerifySolutions < ActiveRecord::Migration[5.0]
  def change
    create_table :verify_solutions do |t|
      t.integer :exam_id
      t.integer :solution_id
      t.boolean :result, limit: 1, default: 0
      t.timestamps
    end
    add_index(:verify_solutions, :exam_id)
    add_index(:verify_solutions, :solution_id)
  end
end
