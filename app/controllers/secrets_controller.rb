class SecretsController < ApplicationController
  before_action :require_login

  def show
    @name = session[:name]
  end

  private

  def require_login
    redirect_to sessions_path unless session.include? :name
  end

end
