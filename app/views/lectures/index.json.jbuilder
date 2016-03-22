json.array!(@lectures) do |lecture|
  json.extract! lecture, :id, :name, :video_link, :week_id, :course_id, :syllabus_id
  json.url lecture_url(lecture, format: :json)
end
