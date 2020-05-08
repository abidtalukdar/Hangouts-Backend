class FriendshipsController < ApplicationController

  def index
    friendships = Friendship.all
    render json: friendships
  end

  def show
    friendship = Friendship.find(params[:id])
    render json: friendship
  end

  def create 
    friendshipobject = Friendship.create(friend_id: params[:user_id], friendee_id: params[:friend_id])
    Friendship.create(friend_id: params[:friend_id], friendee_id: params[:user_id])
    render json: friendshipobject
  end

end