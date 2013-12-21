class UsersController < ApplicationController
	skip_authorization_check
	
  def new
  	@locationX =  -34.397
  	@locationY =  50.644 
  end
end