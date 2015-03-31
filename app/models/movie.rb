class Movie < ActiveRecord::Base
  belongs_to :user
  has_many :reviews
  mount_uploader :image, ImageUploader

  validates :title, :image, presence: true
  validates :title, length: {in: 3..52}
end
