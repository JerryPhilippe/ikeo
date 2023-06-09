class AddToGameColumnCardNumber < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :card_number, :string, default: "**** **** **** ****"
  end
end
