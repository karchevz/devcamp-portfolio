module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
<<<<<<< HEAD
    before_action :configure_permitted_parameters, if: :devise_controller?
=======
    before_filter :configure_permitted_parameters, if: :devise_controller?
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
<<<<<<< HEAD

=======
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
end