class CreateModals < ActiveRecord::Migration
  def change
    create_table :modals do |t|
      t.string :header
      t.text :text

      t.timestamps
    end
  end
end
