module SetSource
  extend ActiveSupport::Concern

  included do
<<<<<<< HEAD
    before_action :set_source
=======
    before_filter :set_source
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  def set_source
    session[:source] = params[:q] if params[:q]
  end
<<<<<<< HEAD


=======
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
end