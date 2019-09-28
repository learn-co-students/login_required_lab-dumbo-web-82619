class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].blank?
      flash[:errors] = "Must Enter Username"
      redirect_to sessions_path
    else
      session[:name] = params[:name]
      redirect_to root_path
    end 
  end

  def destroy
    session.delete :name
    redirect_to sessions_path
  end

end
