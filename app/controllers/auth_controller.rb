class AuthController < ApplicationController

  def login
    # byebug
    email_params = params[:email].downcase
    user = User.find_by(email: email_params)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user
    else 
      render json: { error:"Invalid username or password" } # add status code
    end
  end

end