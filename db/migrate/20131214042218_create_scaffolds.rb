class CreateScaffolds < ActiveRecord::Migration
  def change
    create_table :scaffolds do |t|
      t.string :form
      t.string :textbox
      t.string :textarea
      t.string :submit
      t.string :dropdown
      t.string :value
      t.string :radio
      t.string :check

      t.timestamps
    end
  end
end
