class SessionsController < ApplicationController  
  def new # log in
    if not params[:id] 
    	redirect_to @root
    end
    
    if not current_user
      @current_user = User.find_by_id(params[:id]) 
      if @current_user.valid?
        session[:id] = @current_user
      end
    end

    redirect_to @current_user
  end

  def delete
    session[:id] = nil
  end
end
