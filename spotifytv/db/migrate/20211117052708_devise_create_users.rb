class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :login_id, :integer
      add_index :users, :login_id
      add_column :users, :movie_id, :integer
      add_index :users, :movie_id
  end
end
