class UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show
    user = User.find(params[:id])
    render json: user
  end


  def friendship
    user = User.find(1)
    notfriends = User.all.select {|people| !user.friendees.include?(people)&& people.email != user.email}
  end 

  def friends
    user = User.find(params[:id])
    friends = user.friendees
    render json: friends
  end 

  def create
    user = User.create(email: params[:email], first_name: params[:first_name], last_name: params[:last_name], image: params[:image], current_address: params[:current_address], default_address: params[:default_address], default_location_preference: params[:default_location_preference])
    render json: user
  end

end
