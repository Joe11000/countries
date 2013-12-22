class SessionsController < ApplicationController  
  def new # log in
    if current_user
      redirect_to @current_user
    end

    @current_user = User.find_by_id(params[:id]) 
    if @current_user.valid?
      session[:id] = @current_user
    end

    redirect_to 'user#show'
  end


  def delete
    session[:id] = nil
  end
end
