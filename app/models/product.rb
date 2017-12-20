class Product < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates_presence_of :image
  
  validates :name, :description, :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  
  belongs_to :user
end
