class MeetupsController < ApplicationController

  def index
    meetups = Meetup.all
    render json: meetups
  end

  def show
    meetup = Meetup.find(params[:id])
    render json: meetup
  end

  def create
    meetup = Meetup.create(location: params[:location], date: params[:date], time: params[:time])
    render json: meetup
  end
end
