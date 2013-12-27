class CreateDropdowns < ActiveRecord::Migration
  def change
    create_table :dropdowns do |t|
      t.string :title
      t.string :value1
      t.string :value2
      t.string :value3

      t.timestamps
    end
  end
end
