class AddToGameColumnDateCodeAndAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :date, :string, default: "**/**"
    add_column :games, :code, :string, default: "***"
    add_column :games, :address, :string, default: "*** *** ****** ********"
  end
end
