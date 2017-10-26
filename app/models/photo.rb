class Photo < ApplicationRecord
  mount_uploader :picture, PictureUploader
  belongs_to :user
  belongs_to :place

  validates :picture, presence: true, length: {minimum: 3}
  validates :caption, length: {maximum: 100}
end
