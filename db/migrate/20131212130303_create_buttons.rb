class CreateButtons < ActiveRecord::Migration
  def change
    create_table :buttons do |t|
      t.string :background
      t.string :border
      t.string :color
      t.string :borderadius
      t.string :bordercolor
      t.string :padding
      t.string :text
      t.string :link

      t.timestamps
    end
  end
end
