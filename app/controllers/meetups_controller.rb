class MeetupsController < ApplicationController

  def index
    user = User.find(1)
    meetups = user.meetups
    render json: meetups
  end


  def show
    meetup = Meetup.find(params[:id])
    render json: meetup
  end

  def create
    byebug

    meetup = Meetup.create(location: params[:restaurantSelected], date: params[:dateSelected], time: params[:time])

    Membership.create(meetup_id: meetup.id, user_id: params[:user])

    friends = params[:friendsInvited]
  
    friends.each do |friend|
      friendee = User.find(friend)
      Membership.create(meetup_id: meetup.id, user_id: friendee.id)
    end 



    byebug
  
    

    render json: meetup
  end



end
