class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist 
  include SetSource

  def current_user
    super
  end

  #below is actions for adding params search query
  #before_action :set_source

  #def set_source
  #  session[:source] = params[:q] if params[:q] 
  #end
end
