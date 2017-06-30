<<<<<<< HEAD
  module CurrentUserConcern
  def current_user
      super || guest_user
=======
module CurrentUserConcern
  extend ActiveSupport::Concern

  def current_user
    super || guest_user
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end

  def guest_user
    guest = GuestUser.new
    guest.name = "Guest User"
    guest.first_name = "Guest"
    guest.last_name = "User"
    guest.email = "guest@example.com"
    guest
  end
<<<<<<< HEAD

=======
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
end