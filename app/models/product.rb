class Product < ApplicationRecord
  belongs_to :order
  
  has_many :pictures, as: :imageable

end