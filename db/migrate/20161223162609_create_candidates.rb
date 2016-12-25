class CreateCandidates < ActiveRecord::Migration[5.0]
  def up
    create_table :candidates do |t|
      t.string :email, null: false
      t.string :name, limit: 100, null: false
      t.timestamps
    end
  end

  def down
    drop_table :candidates
  end
end
