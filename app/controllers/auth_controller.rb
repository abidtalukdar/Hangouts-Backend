class AuthController < ApplicationController

  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user
    else 
      render json: { error:"Invalid username or password" } # add status code
    end
  end

end