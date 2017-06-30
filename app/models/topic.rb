class Topic < ApplicationRecord
  validates_presence_of :title

  has_many :blogs
<<<<<<< HEAD
end
=======

  def self.with_blogs
    includes(:blogs).where.not(blogs: { id: nil })
  end
end
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
