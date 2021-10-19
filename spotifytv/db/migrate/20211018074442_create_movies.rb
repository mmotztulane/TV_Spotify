class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string 'movie'
      t.integer 'likes', :null => false, :default => '0'
      t.integer 'dislikes', :null => false, :default => '0'
      t.integer 'comments', :null => false, :default => '0'
      t.string 'genre'
      t.string 'age_rating'
      t.date 'release_date'
      t.timestamps
    end
  end
end
