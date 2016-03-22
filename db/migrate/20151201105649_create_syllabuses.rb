class CreateSyllabuses < ActiveRecord::Migration
  def change
    create_table :syllabuses do |t|
      t.string :name
      t.string :title
      t.string :topics
      t.datetime :released
      t.datetime :deadline
      t.integer :lectures_time
      t.integer :homework_time
      t.boolean :handout
      t.string :download_file_name
      t.references :course, index: true, foreign_key: true
      t.references :week, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
