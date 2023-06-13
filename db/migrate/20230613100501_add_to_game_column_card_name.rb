class AddToGameColumnCardName < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :card_name, :string, default: "****** *******"
  end
end
