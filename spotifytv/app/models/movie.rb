class Movie < ActiveRecord::Base
  validates :movie, format: { with: /\A[a-z\d ,:-]*\Z/i,
    message: "Only allows capital/lowercase letters, numbers, spaces, commas, colons, and dashes." }, length: { in: 1..50 }
  validates :genre, format: { with: /\A[a-z ,]*\Z/i,
    message: "Only allows letters and spaces." }, length: { in: 1..40 }
  validates :release_date, length: { in: 10..10 }
  has_many :users
end