class StudentsController < ApplicationController
	 #initialize an empty object for student creation method
  def new
    @student = Student.new
    @students = Student.all
  end

  #add a new student to the Class Attendees table
  def create
    #save the new student only if today's date matches date entered
    #todays_date = Time.now.to_a[3..5].reverse.to_s.gsub(", ","-0")
    
    #if todays_date == @date
      @student = student.new(student_params)

      if @student.save
        puts "student was saved"
      else
      # You should probably create an error flash here
      # The puts statement will only be visible in the server log
        puts "not saved :("
      end
    #end

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