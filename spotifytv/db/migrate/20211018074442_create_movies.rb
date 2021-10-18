class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string 'movie'
      t.integer 'likes'
      t.integer 'dislikes'
      t.integer 'comments'
      t.string 'genre'
      t.string 'age_rating'
      t.date 'release_date'
      t.timestamps
    end
  end
end
