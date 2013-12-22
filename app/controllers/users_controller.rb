class UsersController < ApplicationController
  skip_authorization_check
	
  layout "using_google_maps_api_layout"

  def new

  	@locationX =  -34.397
  	@locationY =  50.644 
  end

  def create 
  	user = User.new()

  	redirect_to new_session(user)
  end
end