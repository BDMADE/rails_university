json.array!(@courses) do |course|
  json.extract! course, :id, :name, :code, :start, :end, :course_img, :about, :details, :objective, :prerequisites, :system, :agenda, :faq
  json.url course_url(course, format: :json)
end
