class CreateExams < ActiveRecord::Migration[5.0]
  def up
    create_table :exams do |t|
      t.integer :candidate_id
      t.integer :question_id
      t.string :link, null: false
      t.text :code, limit: 4294967295
      t.integer :start_time
      t.integer :end_time
      t.integer :status, limit: 2, default: 0
      t.boolean :timed_out, default: false
      t.timestamps
    end
    add_index(:exams, :candidate_id)
    add_index(:exams, :question_id)
  end

  def down
    drop_table :exams
  end
end
