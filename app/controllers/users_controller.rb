class UsersController < ApplicationController

  def create
    byebug
    user = User.where('lower(email) = ?', params[:email].downcase).first
    if user 
      render json: { error:"An account with this email already exists." }, status: :bad_request
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


  def notfriends
    user = User.find(params[:id])
    notfriends = User.all.select {|people| !user.friends.include?(people)&& people.email != user.email}.shuffle.slice(0, 3)
    render json: notfriends
  end 

  def friends
    user = User.find(params[:id])
    friends = user.friends
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


