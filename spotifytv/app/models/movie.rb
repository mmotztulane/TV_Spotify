class Movie < ActiveRecord::Base
  validates :movie, format: { with: /\A[a-z\d ,:-]*\Z/i,
    message: "Only allows capital/lowercase letters, numbers, spaces, commas, colons, and dashes." }, length: { in: 1..50 }
  validates :genre, format: { with: /\A[a-z ,]*\Z/i,
    message: "Only allows letters and spaces." }, length: { in: 1..40 }
  validates :release_date, format: { with: /\A(0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])[\/\-]\d{4}\Z/,
    message: "Must be DD/MM/YYYY." }
end