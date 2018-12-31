class Room < ApplicationRecord
  has_many :images
  has_many :comments, -> {order(:created_at => :desc)}
  has_many :likes

  def is_liked user
    if user
      Like.find_by(user_id: user.id, room_id: id)
    end
  end
end
