class Photo < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  mount_uploader :url, PhotoUploader
end
