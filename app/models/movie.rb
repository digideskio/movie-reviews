class Movie < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader

  validates :title, :image, presence: true
  validates :title, length: {in: 3..52}
end
