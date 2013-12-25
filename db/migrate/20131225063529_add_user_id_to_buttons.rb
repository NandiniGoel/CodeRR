class AddUserIdToButtons < ActiveRecord::Migration
  def change
  	add_column :buttons, :user_id, :integer
  	add_index :buttons, :user_id
  end
end
