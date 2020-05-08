class MeetupsController < ApplicationController

  def index
    user = User.find(3)
    meetups = user.meetups
    render json: meetups
  end

  def show
    meetup = User.find(params[:id]).meetups
    render json: meetup
  end

  def create
    location_address = params[:restaurantSelected][0][:location][:display_address].join(", ")
    meetup = Meetup.create(location_address: params[:restaurantSelected][0][:location][:display_address].join(", "), location_name: params[:restaurantSelected][0][:name], date: params[:dateSelected], time: params[:timeSelected], image: params[:restaurantSelected][0][:image_url], display_phone: params[:restaurantSelected][0][:display_phone], latitude: params[:restaurantSelected][0][:coordinates][:latitude], longitude: params[:restaurantSelected][0][:coordinates][:longitude])    
    
    Membership.create(meetup_id: meetup.id, user_id: params[:user][:id])
    
    friends = params[:friendsInvited]    
    friends.each do |friend|
      
      friend_id = friend[:id]
      friendee = User.find(friend[:id])
      
      Membership.create(meetup_id: meetup.id, user_id: friendee.id)
    end

    render json: meetup
  end

end

# <ActionController::Parameters 
# {"user"=>3, "dateSelected"=>"2020-05-22T04:00:00.000Z", 
# "restaurantSelected"=>
# [
#   {"id"=>"sRMWFURvVPwep7aZ7xsVgg", 
#   "alias"=>"greek-grill-taverna-ridgewood-ridgewood-3", 
#   "name"=>"Greek Grill Taverna - Ridgewood", 
#   "image_url"=>"https://s3-media3.fl.yelpcdn.com/bphoto/D_3vMckhPtTUjeK_-x3GSA/o.jpg", 
#   "is_closed"=>false, 
#   "url"=>"https://www.yelp.com/biz/greek-grill-taverna-ridgewood-ridgewood-3?adjust_creative=EeqhuYvIztQzw3uLvy51DA&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=EeqhuYvIztQzw3uLvy51DA", 
#   "review_count"=>24, 
#   "categories"=>[{"alias"=>"greek", "title"=>"Greek"}], 
#   "rating"=>4, 
#   "coordinates"=>{"latitude"=>40.709265, "longitude"=>-73.898277}, 
#   "transactions"=>["delivery", "pickup"], 
#   "location"=>{"address1"=>"6517 Fresh Pond Rd", "address2"=>nil, "address3"=>"", "city"=>"Ridgewood", "zip_code"=>"11385", "country"=>"US", "state"=>"NY", 
#     "display_address"=>["6517 Fresh Pond Rd", "Ridgewood, NY 11385"]}, 
#     "phone"=>"+17183662001", "display_phone"=>"(718) 366-2001", "distance"=>1127.994769111602}]

# , "friendsInvited"=>[{"id"=>1, "first_name"=>"Eric", "last_name"=>"Cheung", "default_address"=>"586 Pacific St. Brooklyn, NY 11217", "image"=>"https://pbs.twimg.com/profile_images/1128547987389423616/UyZkZql2_400x400.jpg"}], "controller"=>"meetups", "action"=>"create", "meetup"=>{}} permitted: false>