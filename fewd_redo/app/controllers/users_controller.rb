class UsersController < ApplicationController
  #part of new user creation method below
  def new
    #needs empty object to be initialized
    @user = User.new
  end

#create a new user when user registers
  def create
     @user = User.new(user_params)
    if @user.save
      redirect_to '/enter'
      puts "User created & saved to db"
    else
      redirect_to '/enter'
      puts "User not saved"
    end
  end

private
  def user_params
    params
    .require(:user)
    .permit(:password)
  end

end #end Users class definition