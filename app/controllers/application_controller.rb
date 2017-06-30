class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
<<<<<<< HEAD
  include DeviseWhitelist 
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent   

  #below is actions for adding params search query
  #before_action :set_source

  #def set_source
  #  session[:source] = params[:q] if params[:q] 
  #end  
end

=======
  include DeviseWhitelist
  include SetSource
  include CurrentUserConcern
  include DefaultPageContent
end
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
