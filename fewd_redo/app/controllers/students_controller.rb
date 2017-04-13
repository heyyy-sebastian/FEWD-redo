class StudentsController < ApplicationController
	#initialize an empty object for student creation method
  def new
    @student = Student.new
  end

  #list all students
  def index
    @students = Student.all
  end


  #add a new student to the Students table
  def create

      @student = Student.new(student_params)

      if @student.save
      #Need a success flash notice here
        puts "student was saved"
      else
      #Need to create a flash error here
        puts "not saved :("
      end

    redirect_to '/class-attendance/students'
    # This just reloads the page since the routes are set up weird
  end

  private

  def student_params
    params
      .require(:student)
      .permit(:name)
  end

end