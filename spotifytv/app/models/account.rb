class Account < ActiveRecord::Base
  validates :user, format: { with: /\A[a-z\d ,:-]*\Z/i,
    message: "Only allows capital/lowercase letters, numbers, spaces, commas, colons, and dashes." }, length: { in: 1..30 }
  validates :password, format: { with: /\A[a-z\d ,]*\Z/i,
    message: "Only allows letters, spaces, and numbers." }, length: { in: 1..40 }
end
