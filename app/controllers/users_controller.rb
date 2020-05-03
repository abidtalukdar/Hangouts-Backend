class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end

  def create
    user = User.create(name: params[:name], first_name: params[:first_name], last_name: params[:last_name], img: params[:img], current_address: params[:current_address], default_address: params[:default_address]])
    render json: user
  end

end
