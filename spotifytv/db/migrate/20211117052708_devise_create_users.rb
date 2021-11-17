class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :login_id, :integer
      add_index :users, :login_id
  end
end
