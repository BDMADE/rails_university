json.array!(@syllabuses) do |syllabus|
  json.extract! syllabus, :id, :name, :title, :topics, :released, :deadline, :lectures_time, :homework_time, :handout, :download_file_name, :course_id, :week_id
  json.url syllabus_url(syllabus, format: :json)
end
