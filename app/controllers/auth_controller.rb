class AuthController < ApplicationController

  def login
    # byebug
    user = User.where('lower(email) = ?', params[:email].downcase).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      render json: user
    else 
      render json: { error:"Invalid username or password" } # add status code
    end
  end

end