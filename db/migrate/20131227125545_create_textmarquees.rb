class CreateTextmarquees < ActiveRecord::Migration
  def change
    create_table :textmarquees do |t|
      t.text :text
      t.string :background
      t.string :color

      t.timestamps
    end
  end
end
