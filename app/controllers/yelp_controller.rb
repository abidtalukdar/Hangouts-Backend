class YelpController < ApplicationController

    def search
      # value = params[:]
      lat = params[:lat]
      lng = params[:lng]
      response = RestClient::Request.execute(
        method: "GET",
        url: "https://api.yelp.com/v3/businesses/search?term=food&radius=1500&limit=4&latitude=#{lat}&longitude=#{lng}",
        headers: { Authorization: "Bearer #{ENV["YELP_API"]}" }
        )
     results = JSON.parse(response)
     render json: results
    end


    def yelpSearch
      value = params[:value]
      lat = params[:lat]
      lng = params[:lng]
      response = RestClient::Request.execute(
        method: "GET",
        url: "https://api.yelp.com/v3/businesses/search?term=#{value}&radius=1500&limit=6&latitude=#{lat}&longitude=#{lng}",
        headers: { Authorization: "Bearer #{ENV["YELP_API"]}" }
        )
     results = JSON.parse(response)
     render json: results
    end


end
  
  
  