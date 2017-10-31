class SessionsController < ApplicationController
  def new
  end
  def create 
  	user = User.find_by(email: params[:session][:email].downcase)
  	if  user &&  user.authenticate(params[:session][:password])
  	#login
  	else
  	#flash error
  	flash_now[:danger] = "Invalid email/password conbination"

  	render 'new'
  end
  end 
  
  

end
