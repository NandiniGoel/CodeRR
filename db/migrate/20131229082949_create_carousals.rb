class CreateCarousals < ActiveRecord::Migration
  def change
    create_table :carousals do |t|
      t.string :image
      t.string :image2
      t.string :image3

      t.timestamps
    end
  end
end
