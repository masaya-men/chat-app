class Message < ApplicationRecord

  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: :was_attachd?

  def was_attachd?
    self.image.attached?
  end

end
