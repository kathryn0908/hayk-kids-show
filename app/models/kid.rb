class Kid < ApplicationRecord
    validates :age, inclusion: {in: 6..15}, presence: {message: "Please include age when adding a new kid, the age must be between 6 and 15"}, numerically: true
    validates :username, uniqueness: {message:"This username has already been taken."}, length {in: 7..25, message:"The username must be between 7 and 25 characters long."}, presence: true
    
end
