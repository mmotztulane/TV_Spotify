class User < ApplicationRecord
  validates :username, format: { with: /\A[a-z\d]*\Z/i,
    message: "Only allows capital/lowercase letters and numbers." }, length: { in: 3..20 }
  validates :comment, format: { with: /\A[\w .,!?]+\Z/i,
    message: "Only allows letters, numbers, commas, spaces, and end of sentence punctuation." }, length: { in: 1..200 }
end