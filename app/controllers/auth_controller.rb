class AuthController < ApplicationController

  def login
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      render json: user
    else 
      render json: { error:"Invalid username or password" }
    end
  end

end