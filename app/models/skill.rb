class Skill < ApplicationRecord
<<<<<<< HEAD
  include Placeholder
  validates_presence_of :title, :skil_utilized

  after_initialize :set_defaults

  def set_defaults
    self.badge ||= Placeholder.image_generator(height: '250', width: '250')
  end
=======
  validates_presence_of :title, :percent_utilized
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
end
