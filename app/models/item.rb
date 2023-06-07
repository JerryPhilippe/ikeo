class Item < ApplicationRecord
  has_one_attached :photo
  has_many :cart_items
end
