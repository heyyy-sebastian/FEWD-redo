class StudentsController < ApplicationController
	#initialize an empty object for student creation method
  def new
    @student = Student.new
  end

  #list all students
  def index
    todays_session = session[:user_id]
    @todays_students = Student.where(user_id: todays_session)
  end

  #add a new student to the Students table
  def create

      @student = Student.new(student_params)
      #set foreign key to match session id
      @student.user_id = session[:user_id]

      if @student.save
      #Need a success flash notice here
        puts "student was saved"
      else
      #Need to create a flash error here
        puts "not saved :("
      end

    redirect_to '/class-attendance/students'
  end

  private

  def student_params
    params
      .require(:student)
      .permit(:name)
  end

end