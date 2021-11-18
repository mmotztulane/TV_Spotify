class Movie < ActiveRecord::Base
  validates :movie, format: { with: /\A[a-z\d ,:-]*\Z/i,
    message: "Only allows capital/lowercase letters, numbers, spaces, commas, colons, and dashes." }, length: { in: 1..50 }
   validates :release_date, length: { in: 10..10 }
  has_many :users
  has_and_belongs_to_many :genres
end