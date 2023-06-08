class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  after_create :create_game

  has_one :cart

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :username, presence: true
  has_many :games

  after_create :create_cart

  def create_cart
    self.cart = Cart.create
  end

  def create_game
    game = Game.new
    game.user = self
    game.save
  end
end
