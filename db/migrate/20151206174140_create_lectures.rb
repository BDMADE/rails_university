class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :name
      t.string :video_link
      t.references :week, index: true, foreign_key: true
      t.references :course, index: true, foreign_key: true
      t.references :syllabus, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
