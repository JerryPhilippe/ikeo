class AddDefaultLevelToGames < ActiveRecord::Migration[7.0]
  def change
    change_column_default :games, :level, 0
  end
end
