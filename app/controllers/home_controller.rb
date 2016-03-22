class HomeController < ApplicationController
  def index
    @courses = Course.all
  end

  def admin
    if user_signed_in?
      admin_url
      @courses = Course.all
    else
      redirect_to new_user_session_path
    end
  end


  def administrator
    if user_signed_in?
      redirect_to admin_path

    else
      redirect_to new_user_session_path
    end


  end


  def subject
    #id= subject_path()
    id= params[:id]

    @syllabus= Syllabus.find_by_course_id(id)
    @syllabuses=Syllabus.where(course_id: id)
    @last_date = Syllabus.where(course_id: id).last!





    if @syllabuses.nil?
      render :text => 'No syllabus',:layout => true
    end

  end


  def dashboard
    @courses = Course.all
  end



  def courseware
    id= params[:id]
    @syllabus= Syllabus.find_by_course_id(id)
    @syllabuses=Syllabus.where(course_id: id)

  end




  private
  # Use callbacks to share common setup or constraints between actions.
  def set_course
    @course = Course.find(params[:id])
  end

  def subject_path
    @current_uri = request.env['PATH_INFO'].split('/')
    @l=@current_uri[2]
  end



end



