class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.float :price
      t.string :room_type
      t.string :category

      t.timestamps
    end
  end
end
