class Room < ApplicationRecord
  has_many :images
  has_many :comments, -> {order(:created_at => :desc)}
end
