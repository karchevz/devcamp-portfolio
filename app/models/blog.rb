class Blog < ApplicationRecord
  enum status: { draft: 0, published: 1 }
  extend FriendlyId
  friendly_id :title, use: :slugged

<<<<<<< HEAD
  validates_presence_of :title, :body

  belongs_to :topic

=======
  validates_presence_of :title, :body, :topic_id

  belongs_to :topic

  has_many :comments, dependent: :destroy

>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
  def self.special_blogs
    all
  end

  def self.featured_blogs
    limit(2)
  end
<<<<<<< HEAD
=======

  def self.recent
    order("created_at DESC")
  end
>>>>>>> d9ac59bad4e94b57160610617dfc83560657564d
end
