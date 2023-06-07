class Game < ApplicationRecord
  belongs_to :user
  
  @level = 1
end
