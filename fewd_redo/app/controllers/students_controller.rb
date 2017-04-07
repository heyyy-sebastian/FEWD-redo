class StudentsController < ApplicationController
	#initialize an empty object for student creation method
  def new
    @student = Student.new
    #list all students
    @students = Student.all
  end

  #add a new student to the Students table
  def create

      @student = Student.new(student_params)

      if @student.save
        puts "student was saved"
      else
      #Need to create a flash error here
        puts "not saved :("
      end

    redirect_to '/class-attendance'
    # This just reloads the page since the routes are set up weird
  end

  private

  def student_params
    params
      .require(:student)
      .permit(:name)
  end

end