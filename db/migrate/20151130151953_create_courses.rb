class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.date :start
      t.date :end
      t.string :course_img
      t.text :about
      t.text :details
      t.text :objective
      t.string :prerequisites
      t.text :system
      t.text :agenda
      t.text :faq

      t.timestamps null: false
    end
  end
end
