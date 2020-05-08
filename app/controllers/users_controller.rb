class UsersController < ApplicationController

  def create
    user = User.where('lower(email) = ?', params[:email].downcase).first
    if user 
      render json: { error:"An account with this email already exists." } # add status code
    else
      user = User.create(email: params[:email], first_name: params[:first_name], last_name: params[:last_name], password: params[:password], image: nil, current_address: nil, default_address: nil, default_location_preference: false)
      session[:user_id] = user.id
      render json: user
    end
  end

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


  def update
    user = User.find(params[:id])
    lat = params[:currentLocation][0]
    lng = params[:currentLocation][1]
    string = "#{lat} #{lng}"

    user.update(current_address: string)
    # byebug
    render json: "hi"
  end 




end


