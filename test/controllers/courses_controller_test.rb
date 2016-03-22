require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:courses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, course: { about: @course.about, agenda: @course.agenda, code: @course.code, course_img: @course.course_img, details: @course.details, end: @course.end, faq: @course.faq, name: @course.name, objective: @course.objective, prerequisites: @course.prerequisites, start: @course.start, system: @course.system }
    end

    assert_redirected_to course_path(assigns(:course))
  end

  test "should show course" do
    get :show, id: @course
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course
    assert_response :success
  end

  test "should update course" do
    patch :update, id: @course, course: { about: @course.about, agenda: @course.agenda, code: @course.code, course_img: @course.course_img, details: @course.details, end: @course.end, faq: @course.faq, name: @course.name, objective: @course.objective, prerequisites: @course.prerequisites, start: @course.start, system: @course.system }
    assert_redirected_to course_path(assigns(:course))
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, id: @course
    end

    assert_redirected_to courses_path
  end
end
