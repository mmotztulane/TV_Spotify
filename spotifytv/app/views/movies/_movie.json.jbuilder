json.extract! movie, :id, :movie, :likes, :dislikes, :comments, :genre, :age_rating, :release_date, :created_at, :updated_at
json.url movie_url(movie, format: :json)
