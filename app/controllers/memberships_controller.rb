class MembershipsController < ApplicationController

  def index
    memberships = Membership.all
    render json: memberships
  end

end
