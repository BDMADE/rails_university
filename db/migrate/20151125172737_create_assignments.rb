class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :name
      t.text :details
      t.string :answer
      t.integer :total_mark

      t.references :course, index: true, foreign_key: true
      t.references :week, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
