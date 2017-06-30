module ApplicationCable
  class Connection < ActionCable::Connection::Base
<<<<<<< HEAD
=======
    identified_by :current_user

    def guest_user
      guest = GuestUser.new
      guest.id = guest.object_id
      guest.name = "Guest User"
      guest.first_name = "Guest"
      guest.last_name = "User"
      guest.email = "guest@user.com"
      guest
    end

    def connect
      self.current_user = find_verified_user || guest_user
      logger.add_tags 'ActionCable', current_user.email
      logger.add_tags 'ActionCable', current_user.id
    end

    protected

    def find_verified_user
      if verified_user = env['warden'].user
        verified_user
      end
    end
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  end
end
