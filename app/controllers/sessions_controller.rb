class SessionsController < ApplicationController
  def new
  end

  def create 
  	user = User.find_by(email: params[:session][:email].downcase)
    	if  user &&  user.authenticate(params[:session][:password])
    	#login
    	log_in user
    	redirect_to user
    	else
    	#flash error
    	flash.now[:danger] = "Invalid email/password conbination"

    	render 'new'
    end
  end 

  def destroy
    logged_out
    redirect_to login_path

  end 
  
end
