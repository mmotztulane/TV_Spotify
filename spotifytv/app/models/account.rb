class Account < ActiveRecord::Base
  validates :name, format: { with: /\A[a-z\d]*\Z/i,
    message: "Only allows capital/lowercase letters and numbers." }, length: { in: 3..20 }
   validates :password, format: { with: /\A[\w .,!?$&*@]+\Z/i,
    message: "Only allows letters, numbers, commas, spaces, and end of sentence punctuation." }, length: { in: 4..20 }
end
