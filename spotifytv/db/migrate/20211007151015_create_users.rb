class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table 'users' do |t|
      t.string 'username'
      t.string 'reaction'
      t.text 'comment', :null => false, :default => 'No Comment'
      t.timestamps
    end
  end
    
    before_save :default_values
    def default_values
      self.comments= 'No Comment' if self.status.nil
    end
end
