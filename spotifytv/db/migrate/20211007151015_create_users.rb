class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table 'users' do |t|
      t.string 'username'
      t.string 'reaction'
      t.text 'comment'
      t.timestamps
    end
  end
end
