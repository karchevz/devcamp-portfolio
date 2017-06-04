class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include DeviseWhitelist 
  include SetSource

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Guest User", 
                  first_name: "Guest", 
                  last_name: "User", 
                  email: "guest@example.com"
                  )
  end

  #below is actions for adding params search query
  #before_action :set_source

  #def set_source
  #  session[:source] = params[:q] if params[:q] 
  #end
end
