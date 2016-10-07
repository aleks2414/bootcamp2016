class SecondReview < ActiveRecord::Base
  belongs_to :user
  belongs_to :second_test
end
