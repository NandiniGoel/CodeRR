class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.string :img
      t.string :text
      t.string :extra
      t.string :extram

      t.timestamps
    end
  end
end
