module ApplicationHelper
	#helper methods come from this tutorial:
	#https://www.railstutorial.org/book/basic_login

	#define the current user for a logged in session
  	def current_user
    	@current_user ||= User.find_by(id: session[:user_id])
  	end

  	#determine whether the user is logged in or not
  	def logged_in?
    	!current_user.nil?
  	end

  	#logout
  	def destroy
    	session[:user_id] = nil
    	redirect_to '/enter'
  	end

end
