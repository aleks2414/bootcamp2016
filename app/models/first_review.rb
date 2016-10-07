class FirstReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :first_test
end
