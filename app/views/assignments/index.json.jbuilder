json.array!(@assignments) do |assignment|
  json.extract! assignment, :id, :name, :details, :answer, :course_id, :week_id
  json.url assignment_url(assignment, format: :json)
end
