module ApplicationHelper
  # Below is an example of a helper method
  def sample_helper
    "<p>My helper</p>".html_safe
  end

  def login_helper
    if current_user.is_a?(User)
      link_to 'Logout', destroy_user_session_path, method: :delete 
    else
      (link_to 'Login', new_user_session_path) + 
      "<br>".html_safe +
      (link_to 'Register', new_user_registration_path)
    end 
  end
end
