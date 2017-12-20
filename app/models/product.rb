class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  
  validates :name, :description, :price, presence: true
  
  belongs_to :user
end
