class Lecture < ActiveRecord::Base
  belongs_to :week
  belongs_to :course
  belongs_to :syllabus
end
